.class public Lcom/slideme/sam/manager/model/SamConstants;
.super Ljava/lang/Object;
.source "SamConstants.java"


# static fields
.field public static ANDROID_VERSION_URL:Ljava/lang/String; = null

.field public static APPLICATION_VERSION:Ljava/lang/String; = null

.field public static final AUTO_UPDATES_APPS:Ljava/lang/String; = "Auto Updates Check"

.field public static final CATEGORY_BROWSE:Ljava/lang/String; = "Open Category"

.field public static final DOWNLOAD_ATTEMPT:Ljava/lang/String; = "Download Attempt"

.field public static DOWNLOAD_NOTIFICATION_URL:Ljava/lang/String; = null

.field public static DOWNLOAD_PATH:Ljava/lang/String; = null

.field public static final DOWNLOAD_RESULT:Ljava/lang/String; = "Download Result"

.field public static FEED_SERVER_URL:Ljava/lang/String; = null

.field public static final FILESYSTEM_WRITE_BUFFER_SIZE:I = 0x2800

.field public static final FREE_DOWNLOAD:Ljava/lang/String; = "Download"

.field public static final HTTP_SESSION_EXPIRE:J = 0x493e0L

.field public static ICONS_URL:Ljava/lang/String; = null

.field public static final INSTALL_RESULT:Ljava/lang/String; = "Install Result"

.field public static INSTALL_URL:Ljava/lang/String; = null

.field public static final LATEST_APPS:Ljava/lang/String; = "Latest Apps"

.field public static final LOCAL_APPS:Ljava/lang/String; = "Local Apps"

.field public static LOGIN_URL:Ljava/lang/String; = null

.field public static MODU_FEATURED_URL:Ljava/lang/String; = null

.field public static final MY_DOWNLOADS:Ljava/lang/String; = "My Downloads"

.field public static NOTIFICATION_URL:Ljava/lang/String; = null

.field public static PARTNER:Ljava/lang/String; = null

.field public static final POPULAR_APPS:Ljava/lang/String; = "Popular Apps"

.field public static PREVIEW_URL:Ljava/lang/String; = null

.field public static final PURCHASE:Ljava/lang/String; = "Purchase Attempt"

.field public static final PURCHASE_ALREADY:Ljava/lang/String; = "Re-Purchase Attempt"

.field public static final PURCHASE_ATTEMPT_NO_PAY:Ljava/lang/String; = "Purchase Attempt NPM"

.field public static final PURCHASE_CHECK_FAILED:Ljava/lang/String; = "Purchase Check Failed"

.field public static PURCHASE_CHECK_URL:Ljava/lang/String; = null

.field public static final PURCHASE_FAILED:Ljava/lang/String; = "Purchase Failed"

.field public static final PURCHASE_SUCCESS:Ljava/lang/String; = "Purchase Success"

.field public static final PURCHASE_SUCCESS_ALREADY:Ljava/lang/String; = "Already Purchased"

.field public static PURCHASE_URL:Ljava/lang/String; = null

.field public static SDK:[Ljava/lang/String; = null

.field public static final SEARCH_APPS:Ljava/lang/String; = "Search Apps"

.field public static SLIDEME_HTTPS_URL:Ljava/lang/String; = null

.field public static SLIDEME_HTTP_URL:Ljava/lang/String; = null

.field public static final STORAGE_LOCKER_VISIT:Ljava/lang/String; = "Open Storage Locker"

.field public static SYSTEM_CONNECT:Ljava/lang/String; = null

.field public static final UPDATES_APPS:Ljava/lang/String; = "Updates Check"

.field public static UPDATE_CHECK_URL:Ljava/lang/String;

.field public static USER_LOGOUT:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 5
    sput-object v2, Lcom/slideme/sam/manager/model/SamConstants;->FEED_SERVER_URL:Ljava/lang/String;

    .line 7
    sput-object v2, Lcom/slideme/sam/manager/model/SamConstants;->SLIDEME_HTTPS_URL:Ljava/lang/String;

    .line 9
    sput-object v2, Lcom/slideme/sam/manager/model/SamConstants;->SLIDEME_HTTP_URL:Ljava/lang/String;

    .line 11
    sput-object v2, Lcom/slideme/sam/manager/model/SamConstants;->APPLICATION_VERSION:Ljava/lang/String;

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/slideme/sam/manager/model/SamConstants;->SLIDEME_HTTPS_URL:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/services/rest?method=user.login"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/slideme/sam/manager/model/SamConstants;->LOGIN_URL:Ljava/lang/String;

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/slideme/sam/manager/model/SamConstants;->SLIDEME_HTTPS_URL:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/services/rest?method=mobileapp.install"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/slideme/sam/manager/model/SamConstants;->INSTALL_URL:Ljava/lang/String;

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/slideme/sam/manager/model/SamConstants;->SLIDEME_HTTPS_URL:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/services/rest?method=mobileapp.download"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/slideme/sam/manager/model/SamConstants;->DOWNLOAD_NOTIFICATION_URL:Ljava/lang/String;

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/slideme/sam/manager/model/SamConstants;->SLIDEME_HTTPS_URL:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/services/rest?method=mobileapp.buy"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/slideme/sam/manager/model/SamConstants;->PURCHASE_URL:Ljava/lang/String;

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/slideme/sam/manager/model/SamConstants;->SLIDEME_HTTPS_URL:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/services/rest?method=mobileapp.purchases"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/slideme/sam/manager/model/SamConstants;->PURCHASE_CHECK_URL:Ljava/lang/String;

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/slideme/sam/manager/model/SamConstants;->SLIDEME_HTTPS_URL:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/services/rest?method=system.connect"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/slideme/sam/manager/model/SamConstants;->SYSTEM_CONNECT:Ljava/lang/String;

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/slideme/sam/manager/model/SamConstants;->SLIDEME_HTTPS_URL:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/services/rest?method=user.logout"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/slideme/sam/manager/model/SamConstants;->USER_LOGOUT:Ljava/lang/String;

    .line 34
    sput-object v2, Lcom/slideme/sam/manager/model/SamConstants;->NOTIFICATION_URL:Ljava/lang/String;

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/slideme/sam/manager/model/SamConstants;->SLIDEME_HTTP_URL:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/sam-version"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/slideme/sam/manager/model/SamConstants;->UPDATE_CHECK_URL:Ljava/lang/String;

    .line 38
    sput-object v2, Lcom/slideme/sam/manager/model/SamConstants;->DOWNLOAD_PATH:Ljava/lang/String;

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/slideme/sam/manager/model/SamConstants;->SLIDEME_HTTP_URL:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/files/previews/icons"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/slideme/sam/manager/model/SamConstants;->ICONS_URL:Ljava/lang/String;

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/slideme/sam/manager/model/SamConstants;->SLIDEME_HTTP_URL:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/files/previews/screenshots"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/slideme/sam/manager/model/SamConstants;->PREVIEW_URL:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
