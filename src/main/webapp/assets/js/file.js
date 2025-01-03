const fileDownLoad = (btn) => {
    window.location.href = `/api/v1/file/file-download/${btn.dataset.fileuid}`;
}