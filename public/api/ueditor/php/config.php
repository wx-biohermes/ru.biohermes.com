<?php
defined('BASEPATH') or exit('No direct script access allowed');

/* 前后端通信相关的配置,注释只允许使用多行方式 */

return [
    /* 自动排版配置项 */
    "mergeEmptyline" => true, // 合并连续的空行，减少文档中的多余空白，使内容更紧凑
    "removeClass" => true, // 去除冗余的 class 样式，保持排版样式的简洁和一致性
    "removeEmptyline" => true, // 去除所有空行，让文本更加紧凑
    "textAlign" => "left", // 段落的排版方式，可取值：left（左对齐）、right（右对齐）、center（居中对齐）、justify（两端对齐），若去掉此属性则不执行段落排版
    "imageBlockLine" => "center", // 图片的浮动方式，可取值：center（居中）、left（左浮动）、right（右浮动）、none（不浮动），若去掉此属性则不执行图片浮动排版
    "pasteFilter" => true, // 根据规则过滤每次粘贴进来的内容，确保粘贴内容符合一定规范
    "clearFontSize" => true, // 去除所有的内嵌字号，使用编辑器默认的字号，统一字号，保持排版的一致性
    "clearFontFamily" => true, // 去除所有的内嵌字体，使用编辑器默认的字体，统一字体，保持排版的一致性
    "removeEmptyNode" => true, // 去掉空节点，优化文档结构
    "indent" => true, // 开启行首缩进，使段落更具层次感
    "indentValue" => "2em", // 行首缩进的大小，可根据需求调整
    "bdc2sb" => false, // 从某种特定格式转换为半角格式，设置为 false 表示不进行此转换
    "tobdc" => false, "mergeEmptyline" => true, // 合并连续的空行，减少文档中的多余空白，使内容更紧凑
    "removeClass" => true, // 去除冗余的 class 样式，保持排版样式的简洁和一致性
    "removeEmptyline" => true, // 去除所有空行，让文本更加紧凑
    "textAlign" => "left", // 段落的排版方式，可取值：left（左对齐）、right（右对齐）、center（居中对齐）、justify（两端对齐），若去掉此属性则不执行段落排版
    "imageBlockLine" => "center", // 图片的浮动方式，可取值：center（居中）、left（左浮动）、right（右浮动）、none（不浮动），若去掉此属性则不执行图片浮动排版
    "pasteFilter" => true, // 根据规则过滤每次粘贴进来的内容，确保粘贴内容符合一定规范
    "clearFontSize" => true, // 去除所有的内嵌字号，使用编辑器默认的字号，统一字号，保持排版的一致性
    "clearFontFamily" => true, // 去除所有的内嵌字体，使用编辑器默认的字体，统一字体，保持排版的一致性
    "removeEmptyNode" => true, // 去掉空节点，优化文档结构
    "indent" => true, // 开启行首缩进，使段落更具层次感
    "indentValue" => "2em", // 行首缩进的大小，可根据需求调整
    "bdc2sb" => false, // 从某种特定格式转换为半角格式，设置为 false 表示不进行此转换
    "tobdc" => false, // 进行某种到特定格式的转换，设置为 false 表示不执行此转换操作 // 进行某种到特定格式的转换，设置为 false 表示不执行此转换操作

    /* 上传图片配置项 */
    "imageAltValue" => "name", /*图片alt属性和title属性填充值：title为内容标题字段值、name为图片名称*/
    "imageActionName" => "uploadimage", /* 执行上传图片的action名称 */
    "imageFieldName" => "upfile", /* 提交的图片表单名称 */
    "imageMaxSize" => 2048000, /* 上传大小限制，单位B */
    "imageAllowFiles" => [".png", ".jpg", ".jpeg", ".gif", ".webp"], /* 上传图片格式显示 */
    "imageCompressEnable" => false, /* 是否压缩图片,默认是true */
    "imageCompressBorder" => 1600, /* 图片压缩最长边限制 */
    "imageInsertAlign" => "center", /* 插入的图片浮动方式 */
    "imageUrlPrefix" => "", /* 图片访问路径前缀 */
    "imagePathFormat" => "/ueditor/image/{yyyy}{mm}/{time}{rand:6}", /* 上传保存路径,可以自定义保存路径和文件名格式 */
    /* {filename} 会替换成原文件名,配置这项需要注意中文乱码问题 */
    /* {rand:6} 会替换成随机数,后面的数字是随机数的位数 */
    /* {time} 会替换成时间戳 */
    /* {yyyy} 会替换成四位年份 */
    /* {yy} 会替换成两位年份 */
    /* {mm} 会替换成两位月份 */
    /* {dd} 会替换成两位日期 */
    /* {hh} 会替换成两位小时 */
    /* {ii} 会替换成两位分钟 */
    /* {ss} 会替换成两位秒 */
    /* 非法字符 \ : * ? " < > | */

    /* 上传视频配置 */
    "videoActionName" => "uploadvideo", /* 执行上传视频的action名称 */
    "videoFieldName" => "upfile", /* 提交的视频表单名称 */
    "videoPathFormat" => "/ueditor/video/{yyyy}{mm}/{time}{rand:6}", /* 上传保存路径,可以自定义保存路径和文件名格式 */
    "videoUrlPrefix" => "", /* 视频访问路径前缀 */
    "videoMaxSize" => 102400000, /* 上传大小限制，单位B，默认100MB */
    "videoAllowFiles" => [
        ".flv", ".swf", ".mkv", ".avi", ".rm", ".rmvb", ".mpeg", ".mpg",
        ".ogg", ".ogv", ".mov", ".wmv", ".mp4", ".webm", ".mp3", ".wav", ".mid"
    ], /* 上传视频格式显示 */

    /* 上传文件配置 */
    "fileActionName" => "uploadfile", /* controller里,执行上传视频的action名称 */
    "fileFieldName" => "upfile", /* 提交的文件表单名称 */
    "filePathFormat" => "/ueditor/file/{yyyy}{mm}/{time}{rand:6}", /* 上传保存路径,可以自定义保存路径和文件名格式 */
    "fileUrlPrefix" => "", /* 文件访问路径前缀 */
    "fileMaxSize" => 51200000, /* 上传大小限制，单位B，默认50MB */
    "fileAllowFiles" => [
        ".flv", ".swf", ".mkv", ".avi", ".rm", ".rmvb", ".mpeg", ".mpg",
        ".ogg", ".ogv", ".mov", ".wmv", ".mp4", ".webm", ".mp3", ".wav", ".mid",
        ".rar", ".zip", ".tar", ".gz", ".7z", ".bz2", ".cab", ".iso",
        ".doc", ".docx", ".xls", ".xlsx", ".ppt", ".pptx", ".pdf", ".txt", ".md", ".xml"
    ], /* 上传文件格式显示 */

    /* 列出目录下的图片 */
    "imageManagerActionName" => "listimage", /* 执行图片管理的action名称 */
    "imageManagerListSize" => 50, /* 每次列出文件数量 */
    "imageManagerUrlPrefix" => "", /* 图片访问路径前缀 */
    "imageManagerInsertAlign" => "none", /* 插入的图片浮动方式 */
    "imageManagerAllowFiles" => [".png", ".jpg", ".jpeg", ".gif", ".bmp"], /* 列出的文件类型 */

    /* 列出目录下的文件 */
    "showFileExt" => 1, //是否显示文件扩展名，1表示显示，0不显示
    "fileManagerActionName" => "listfile", /* 执行文件管理的action名称 */
    "fileManagerUrlPrefix" => "", /* 文件访问路径前缀 */
    "fileManagerListSize" => 50, /* 每次列出文件数量 */
    "fileManagerAllowFiles" => [
        ".flv", ".swf", ".mkv", ".avi", ".rm", ".rmvb", ".mpeg", ".mpg",
        ".ogg", ".ogv", ".mov", ".wmv", ".mp4", ".webm", ".mp3", ".wav", ".mid",
        ".rar", ".zip", ".tar", ".gz", ".7z", ".bz2", ".cab", ".iso",
        ".doc", ".docx", ".xls", ".xlsx", ".ppt", ".pptx", ".pdf", ".txt", ".md", ".xml"
    ] /* 列出的文件类型 */

];
