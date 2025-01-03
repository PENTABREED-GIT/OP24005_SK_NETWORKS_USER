package com.skn.user.pr.service;

import com.skn.user.pr.dto.SocialMedia;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.NodeList;
import org.xml.sax.InputSource;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.StringReader;
import java.net.URL;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class RssReader {
    private static RssReader instance = null;
    private URL rssURL;

    private RssReader() {}
    public static RssReader getInstance() {
        if (instance == null)
            instance = new RssReader();
        return instance;
    }

    public void setURL(URL url) {
        rssURL = url;
    }

    public List<SocialMedia> getFeedList() {
        List<SocialMedia> socList = new ArrayList<>();

        try {
            // RSS 피드를 읽어 들입니다.
            BufferedReader in = new BufferedReader(new InputStreamReader(rssURL.openStream()));
            String inputLine;
            StringBuilder rssContent = new StringBuilder();

            while ((inputLine = in.readLine()) != null) {
                // '&' 문자를 '&amp;'로 변환합니다.
//                rssContent.append(inputLine.replaceAll("&", "&amp;"));
                rssContent.append(inputLine);
            }
            in.close();

            System.out.println(rssContent);

            DocumentBuilder builder = DocumentBuilderFactory.newInstance().newDocumentBuilder();
//            Document doc = builder.parse(new InputSource(new StringReader(rssContent.toString())));
            Document doc = builder.parse(rssURL.openStream());

            NodeList items = doc.getElementsByTagName("item");
            Pattern pattern = Pattern.compile("<img[^>]*src=[\"']?([^>\"']+)[\"']?[^>]*>");

            int imgCnt = 0;
            int itemCnt = 0;
            for (int ii = 0; ii < items.getLength(); ii++) {
                SocialMedia socialMedia = new SocialMedia();
                Element item = (Element)items.item(ii);
                socialMedia.setTitle(getValue(item, "title"));

                socialMedia.setUrl(getValue(item, "link"));
                String desc = getValue(item, "description");
                Matcher matcher = pattern.matcher(desc);
                imgCnt = 0;
                while (matcher.find()) {
                    socialMedia.setThumbnail(matcher.group(1));
                    imgCnt++;
                    if (imgCnt == 1) {
                        break;
                    }
                }

                socialMedia.setCategory(getValue(item, "category"));
                socialMedia.setTagList(getTagList(item));
                socList.add(socialMedia);
                itemCnt++;
                if(itemCnt >= 20)
                    break;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return socList;
    }

    public String getValue(Element parent, String nodeName) {
        String val = parent.getElementsByTagName(nodeName).item(0).getFirstChild().getNodeValue();
        if (nodeName.equals("category")) {
            val = parent.getElementsByTagName(nodeName).item(0).getFirstChild().getNodeValue();
        }

        return val;
    }

    public List<String> getTagList(Element parent) {
        NodeList category = parent.getElementsByTagName("category");
        List<String> tagList = new ArrayList<>();
        for (int i = 1; i < category.getLength(); i++) {
            String val = category.item(i).getFirstChild().getNodeValue();
            tagList.add(val);
        }

        return tagList;
    }
}
