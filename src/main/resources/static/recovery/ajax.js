
//ajax请求封装
function ajax(url, method, data, isAsync, success_callback, error_callback) {
    // $.ajaxSetup({
    //     beforeSend: function (xhr) {
    //         // xhr.setRequestHeader("Authorization","Bearer " + localStorage.token);
    //     }
    // });
    // var header = {
    //     url: url,
    //     data: data,
    //     type: method,
    //     dataType: 'json',
    //     async: isAsync,
    //     traditional:true
    // }
    $.ajax({
        url: url,
        data: data,
        type: method,
        dataType: 'json',
        async: isAsync,
        traditional:true,
        success: function (result) {
            if(result.code === 200){
                success_callback(result)
            }
            else if(result.code === 404){
                alert(result.message);
            }
            else {
                alert("提交失败!");
            }

        },
        error: function (result) {
            console.log(result);
            //alert("提交失败!");
            error_callback(result);
        }
    })
}


//异步
function AsyncPost(url, data, success_callback, error_callback) {
    ajax(url, "post", data, true, success_callback, error_callback);
}

function AsyncGet(url, data, success_callback, error_callback) {
    ajax(url, "get", data, true, success_callback, error_callback);
}

function AsyncPut(url, data, success_callback, error_callback) {
    ajax(url, "put", data, true, success_callback, error_callback);
}

function AsyncDelete(url, data, success_callback, error_callback) {
    ajax(url, "delete", data, true, success_callback, error_callback);
}

function AsyncAjax(type, url, data, success_callback, error_callback) {
    ajax(url, type, data, true, success_callback, error_callback);
}



//同步
function SyncPost(url, data, success_callback, error_callback) {
    ajax(url, "post", data, false, success_callback, error_callback);
}

function SyncGet(url, data, success_callback, error_callback) {
    ajax(url, "get", data, false, success_callback, error_callback);
}

function AsyncPut(url, data, success_callback, error_callback) {
    ajax(url, "put", data, false, success_callback, error_callback);
}

function SyncDelete(url, data, success_callback, error_callback) {
    ajax(url, "delete", data, false, success_callback, error_callback);
}

function SyncAjax(type, url, data, success_callback, error_callback) {
    ajax(url, type, data, false, success_callback, error_callback);
}