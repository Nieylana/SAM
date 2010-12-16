.class public Lcom/slideme/sam/manager/controller/activities/debug/LogException;
.super Lcom/slideme/sam/manager/controller/activities/generic/BaseActivity;
.source "LogException.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/slideme/sam/manager/controller/activities/generic/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/slideme/sam/manager/controller/activities/debug/LogException;)Lcom/slideme/sam/manager/SAM;
    .locals 1
    .parameter

    .prologue
    .line 16
    iget-object v0, p0, Lcom/slideme/sam/manager/controller/activities/debug/LogException;->sam:Lcom/slideme/sam/manager/SAM;

    return-object v0
.end method

.method public static excutePost(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .parameter "targetURL"
    .parameter "urlParameters"

    .prologue
    .line 97
    const/4 v1, 0x0

    .line 100
    .local v1, connection:Ljava/net/HttpURLConnection;
    :try_start_0
    new-instance v7, Ljava/net/URL;

    invoke-direct {v7, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 101
    .local v7, url:Ljava/net/URL;
    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v1, v0

    .line 102
    const-string v9, "POST"

    invoke-virtual {v1, v9}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 103
    const-string v9, "Content-Type"

    .line 104
    const-string v10, "application/x-www-form-urlencoded"

    .line 103
    invoke-virtual {v1, v9, v10}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const-string v9, "Content-Length"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 107
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    array-length v11, v11

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 106
    invoke-virtual {v1, v9, v10}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const-string v9, "Content-Language"

    const-string v10, "en-US"

    invoke-virtual {v1, v9, v10}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const-string v9, "User-Agent"

    const-string v10, "SAM 4.0"

    invoke-virtual {v1, v9, v10}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    const-string v9, "Authorization"

    const-string v10, "Basic c2FtOmNyYXNo"

    invoke-virtual {v1, v9, v10}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const/4 v9, 0x0

    invoke-virtual {v1, v9}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 113
    const/4 v9, 0x1

    invoke-virtual {v1, v9}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 114
    const/4 v9, 0x1

    invoke-virtual {v1, v9}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 117
    new-instance v8, Ljava/io/DataOutputStream;

    .line 118
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v9

    .line 117
    invoke-direct {v8, v9}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 119
    .local v8, wr:Ljava/io/DataOutputStream;
    invoke-virtual {v8, p1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 120
    invoke-virtual {v8}, Ljava/io/DataOutputStream;->flush()V

    .line 121
    invoke-virtual {v8}, Ljava/io/DataOutputStream;->close()V

    .line 124
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 125
    .local v3, is:Ljava/io/InputStream;
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/InputStreamReader;

    invoke-direct {v9, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 127
    .local v5, rd:Ljava/io/BufferedReader;
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 128
    .local v6, response:Ljava/lang/StringBuffer;
    :goto_0
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .local v4, line:Ljava/lang/String;
    if-nez v4, :cond_1

    .line 132
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    .line 133
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 142
    if-eqz v1, :cond_0

    .line 143
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 138
    .end local v3           #is:Ljava/io/InputStream;
    .end local v4           #line:Ljava/lang/String;
    .end local v5           #rd:Ljava/io/BufferedReader;
    .end local v6           #response:Ljava/lang/StringBuffer;
    .end local v7           #url:Ljava/net/URL;
    .end local v8           #wr:Ljava/io/DataOutputStream;
    :cond_0
    :goto_1
    return-object v9

    .line 129
    .restart local v3       #is:Ljava/io/InputStream;
    .restart local v4       #line:Ljava/lang/String;
    .restart local v5       #rd:Ljava/io/BufferedReader;
    .restart local v6       #response:Ljava/lang/StringBuffer;
    .restart local v7       #url:Ljava/net/URL;
    .restart local v8       #wr:Ljava/io/DataOutputStream;
    :cond_1
    :try_start_1
    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 130
    const/16 v9, 0xd

    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 135
    .end local v3           #is:Ljava/io/InputStream;
    .end local v4           #line:Ljava/lang/String;
    .end local v5           #rd:Ljava/io/BufferedReader;
    .end local v6           #response:Ljava/lang/StringBuffer;
    .end local v7           #url:Ljava/net/URL;
    .end local v8           #wr:Ljava/io/DataOutputStream;
    :catch_0
    move-exception v9

    move-object v2, v9

    .line 137
    .local v2, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 142
    if-eqz v1, :cond_2

    .line 143
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 138
    :cond_2
    const/4 v9, 0x0

    goto :goto_1

    .line 140
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    .line 142
    if-eqz v1, :cond_3

    .line 143
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 145
    :cond_3
    throw v9
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 20
    invoke-super {p0, p1}, Lcom/slideme/sam/manager/controller/activities/generic/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    new-instance v1, Lcom/slideme/sam/manager/controller/activities/debug/LogException$1;

    invoke-direct {v1, p0}, Lcom/slideme/sam/manager/controller/activities/debug/LogException$1;-><init>(Lcom/slideme/sam/manager/controller/activities/debug/LogException;)V

    .line 89
    .local v1, dialogClickListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 90
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0800ec

    invoke-virtual {p0, v2}, Lcom/slideme/sam/manager/controller/activities/debug/LogException;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0800ed

    invoke-virtual {p0, v3}, Lcom/slideme/sam/manager/controller/activities/debug/LogException;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 91
    const v3, 0x7f0800d7

    invoke-virtual {p0, v3}, Lcom/slideme/sam/manager/controller/activities/debug/LogException;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 93
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 150
    invoke-super {p0}, Lcom/slideme/sam/manager/controller/activities/generic/BaseActivity;->onStart()V

    .line 151
    const v0, 0x7f080007

    invoke-virtual {p0, v0}, Lcom/slideme/sam/manager/controller/activities/debug/LogException;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    .line 152
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 156
    invoke-super {p0}, Lcom/slideme/sam/manager/controller/activities/generic/BaseActivity;->onStop()V

    .line 157
    invoke-static {p0}, Lcom/flurry/android/FlurryAgent;->onEndSession(Landroid/content/Context;)V

    .line 158
    return-void
.end method
