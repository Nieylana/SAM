.class public Lcom/slideme/sam/manager/model/domain/SamNotification;
.super Ljava/lang/Object;
.source "SamNotification.java"


# instance fields
.field private m_date:Ljava/util/Date;

.field private m_message:Ljava/lang/String;

.field private m_title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 6
    .parameter "notification"

    .prologue
    const-string v3, "}"

    const-string v3, "{"

    const-string v3, ""

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    :try_start_0
    const-string v3, "}"

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 64
    .local v2, index:I
    const/4 v3, 0x0

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/slideme/sam/manager/model/domain/SamNotification;->m_title:Ljava/lang/String;

    .line 65
    iget-object v3, p0, Lcom/slideme/sam/manager/model/domain/SamNotification;->m_title:Ljava/lang/String;

    const-string v4, "{"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/slideme/sam/manager/model/domain/SamNotification;->m_title:Ljava/lang/String;

    .line 66
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 68
    const-string v3, "{"

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 69
    const-string v3, "}"

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 70
    .local v1, endIndex:I
    const/4 v3, 0x0

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/slideme/sam/manager/model/domain/SamNotification;->m_message:Ljava/lang/String;

    .line 71
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, date:Ljava/lang/String;
    const-string v3, "UTC"

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 74
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "MM/dd/yy HH:mm"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    iput-object v3, p0, Lcom/slideme/sam/manager/model/domain/SamNotification;->m_date:Ljava/util/Date;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    .end local v0           #date:Ljava/lang/String;
    .end local v1           #endIndex:I
    .end local v2           #index:I
    :goto_0
    return-void

    .line 76
    :catch_0
    move-exception v3

    goto :goto_0
.end method


# virtual methods
.method public getDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/slideme/sam/manager/model/domain/SamNotification;->m_date:Ljava/util/Date;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/slideme/sam/manager/model/domain/SamNotification;->m_message:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/slideme/sam/manager/model/domain/SamNotification;->m_title:Ljava/lang/String;

    return-object v0
.end method
