.class Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity$2;
.super Ljava/lang/Thread;
.source "TermsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity;->setRemoteResources(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity;

.field private final synthetic val$bundleId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity$2;->this$0:Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity;

    iput-object p2, p0, Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity$2;->val$bundleId:Ljava/lang/String;

    .line 209
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity$2;)Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity;
    .locals 1
    .parameter

    .prologue
    .line 209
    iget-object v0, p0, Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity$2;->this$0:Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 212
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 213
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    new-instance v3, Lcom/slideme/sam/manager/model/android/tasks/download/HTTPStreamDownloadTask;

    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcom/slideme/sam/manager/model/SamConstants;->SLIDEME_HTTP_URL:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "/mobileapp/terms/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity$2;->val$bundleId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$Priority;->IMMEDIATE:Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$Priority;

    invoke-direct {v3, v4, v5, v0}, Lcom/slideme/sam/manager/model/android/tasks/download/HTTPStreamDownloadTask;-><init>(Ljava/lang/String;Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$Priority;Ljava/io/OutputStream;)V

    invoke-virtual {v3}, Lcom/slideme/sam/manager/model/android/tasks/download/HTTPStreamDownloadTask;->submit()Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask;

    move-result-object v3

    invoke-virtual {v3}, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask;->waitFinish()V

    .line 214
    new-instance v3, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    const-string v4, "\r"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 215
    .local v2, text:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 216
    iget-object v3, p0, Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity$2;->this$0:Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity;

    new-instance v4, Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity$2$1;

    invoke-direct {v4, p0, v2}, Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity$2$1;-><init>(Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity$2;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    .end local v0           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v2           #text:Ljava/lang/String;
    :goto_0
    return-void

    .line 223
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 224
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
