.class Lcom/slideme/sam/manager/controller/activities/debug/LogException$1$1;
.super Ljava/lang/Thread;
.source "LogException.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/slideme/sam/manager/controller/activities/debug/LogException$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/slideme/sam/manager/controller/activities/debug/LogException$1;


# direct methods
.method constructor <init>(Lcom/slideme/sam/manager/controller/activities/debug/LogException$1;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/slideme/sam/manager/controller/activities/debug/LogException$1$1;->this$1:Lcom/slideme/sam/manager/controller/activities/debug/LogException$1;

    .line 28
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 30
    iget-object v7, p0, Lcom/slideme/sam/manager/controller/activities/debug/LogException$1$1;->this$1:Lcom/slideme/sam/manager/controller/activities/debug/LogException$1;

    invoke-static {v7}, Lcom/slideme/sam/manager/controller/activities/debug/LogException$1;->access$0(Lcom/slideme/sam/manager/controller/activities/debug/LogException$1;)Lcom/slideme/sam/manager/controller/activities/debug/LogException;

    move-result-object v7

    invoke-virtual {v7}, Lcom/slideme/sam/manager/controller/activities/debug/LogException;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "CRASH_FILE"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 32
    .local v0, crashFile:Ljava/lang/String;
    const-string v5, ""

    .line 33
    .local v5, msg:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 34
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 35
    const/4 v3, 0x0

    .line 37
    .local v3, inputFile:Ljava/io/InputStream;
    :try_start_0
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    iget-object v8, p0, Lcom/slideme/sam/manager/controller/activities/debug/LogException$1$1;->this$1:Lcom/slideme/sam/manager/controller/activities/debug/LogException$1;

    invoke-static {v8}, Lcom/slideme/sam/manager/controller/activities/debug/LogException$1;->access$0(Lcom/slideme/sam/manager/controller/activities/debug/LogException$1;)Lcom/slideme/sam/manager/controller/activities/debug/LogException;

    move-result-object v8

    invoke-virtual {v8, v0}, Lcom/slideme/sam/manager/controller/activities/debug/LogException;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v3

    invoke-direct {v7, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 41
    .local v6, reader:Ljava/io/BufferedReader;
    :goto_0
    :try_start_1
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    .local v4, line:Ljava/lang/String;
    if-nez v4, :cond_2

    .line 50
    .end local v4           #line:Ljava/lang/String;
    :goto_1
    if-eqz v3, :cond_0

    .line 52
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 56
    :cond_0
    :goto_2
    iget-object v7, p0, Lcom/slideme/sam/manager/controller/activities/debug/LogException$1$1;->this$1:Lcom/slideme/sam/manager/controller/activities/debug/LogException$1;

    invoke-static {v7}, Lcom/slideme/sam/manager/controller/activities/debug/LogException$1;->access$0(Lcom/slideme/sam/manager/controller/activities/debug/LogException$1;)Lcom/slideme/sam/manager/controller/activities/debug/LogException;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/slideme/sam/manager/controller/activities/debug/LogException;->deleteFile(Ljava/lang/String;)Z

    .line 61
    .end local v3           #inputFile:Ljava/io/InputStream;
    .end local v6           #reader:Ljava/io/BufferedReader;
    :cond_1
    :goto_3
    const-string v2, "https://alpha.slideme.org/crash"

    .line 64
    .local v2, http_host_url:Ljava/lang/String;
    :try_start_3
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "deviceId="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/slideme/sam/manager/controller/activities/debug/LogException$1$1;->this$1:Lcom/slideme/sam/manager/controller/activities/debug/LogException$1;

    invoke-static {v8}, Lcom/slideme/sam/manager/controller/activities/debug/LogException$1;->access$0(Lcom/slideme/sam/manager/controller/activities/debug/LogException$1;)Lcom/slideme/sam/manager/controller/activities/debug/LogException;

    move-result-object v8

    invoke-static {v8}, Lcom/slideme/sam/manager/controller/activities/debug/LogException;->access$0(Lcom/slideme/sam/manager/controller/activities/debug/LogException;)Lcom/slideme/sam/manager/SAM;

    move-result-object v8

    invoke-virtual {v8}, Lcom/slideme/sam/manager/SAM;->getDeviceId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "&make="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "&model="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v9, "UTF-8"

    invoke-static {v8, v9}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "&version="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/slideme/sam/manager/controller/activities/debug/LogException$1$1;->this$1:Lcom/slideme/sam/manager/controller/activities/debug/LogException$1;

    invoke-static {v8}, Lcom/slideme/sam/manager/controller/activities/debug/LogException$1;->access$0(Lcom/slideme/sam/manager/controller/activities/debug/LogException$1;)Lcom/slideme/sam/manager/controller/activities/debug/LogException;

    move-result-object v8

    const v9, 0x7f08000a

    invoke-virtual {v8, v9}, Lcom/slideme/sam/manager/controller/activities/debug/LogException;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "&error_log="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/slideme/sam/manager/controller/activities/debug/LogException;->excutePost(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_5

    .line 77
    :goto_4
    return-void

    .line 42
    .end local v2           #http_host_url:Ljava/lang/String;
    .restart local v3       #inputFile:Ljava/io/InputStream;
    .restart local v4       #line:Ljava/lang/String;
    .restart local v6       #reader:Ljava/io/BufferedReader;
    :cond_2
    :try_start_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object v5

    goto/16 :goto_0

    .line 44
    .end local v4           #line:Ljava/lang/String;
    :catch_0
    move-exception v7

    move-object v1, v7

    .line 45
    .local v1, e:Ljava/io/IOException;
    :try_start_5
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_1

    .line 47
    .end local v1           #e:Ljava/io/IOException;
    .end local v6           #reader:Ljava/io/BufferedReader;
    :catch_1
    move-exception v7

    move-object v1, v7

    .line 48
    .local v1, e:Ljava/io/FileNotFoundException;
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 50
    if-eqz v3, :cond_3

    .line 52
    :try_start_7
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 56
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :cond_3
    :goto_5
    iget-object v7, p0, Lcom/slideme/sam/manager/controller/activities/debug/LogException$1$1;->this$1:Lcom/slideme/sam/manager/controller/activities/debug/LogException$1;

    invoke-static {v7}, Lcom/slideme/sam/manager/controller/activities/debug/LogException$1;->access$0(Lcom/slideme/sam/manager/controller/activities/debug/LogException$1;)Lcom/slideme/sam/manager/controller/activities/debug/LogException;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/slideme/sam/manager/controller/activities/debug/LogException;->deleteFile(Ljava/lang/String;)Z

    goto/16 :goto_3

    .line 53
    .restart local v1       #e:Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v1

    .line 54
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 49
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 50
    if-eqz v3, :cond_4

    .line 52
    :try_start_8
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    .line 56
    :cond_4
    :goto_6
    iget-object v8, p0, Lcom/slideme/sam/manager/controller/activities/debug/LogException$1$1;->this$1:Lcom/slideme/sam/manager/controller/activities/debug/LogException$1;

    invoke-static {v8}, Lcom/slideme/sam/manager/controller/activities/debug/LogException$1;->access$0(Lcom/slideme/sam/manager/controller/activities/debug/LogException$1;)Lcom/slideme/sam/manager/controller/activities/debug/LogException;

    move-result-object v8

    invoke-virtual {v8, v0}, Lcom/slideme/sam/manager/controller/activities/debug/LogException;->deleteFile(Ljava/lang/String;)Z

    .line 57
    throw v7

    .line 53
    :catch_3
    move-exception v1

    .line 54
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 53
    .end local v1           #e:Ljava/io/IOException;
    .restart local v6       #reader:Ljava/io/BufferedReader;
    :catch_4
    move-exception v1

    .line 54
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    .line 65
    .end local v1           #e:Ljava/io/IOException;
    .end local v3           #inputFile:Ljava/io/InputStream;
    .end local v6           #reader:Ljava/io/BufferedReader;
    .restart local v2       #http_host_url:Ljava/lang/String;
    :catch_5
    move-exception v7

    move-object v1, v7

    .line 66
    .local v1, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_4
.end method
