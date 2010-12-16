.class public final Lcom/slideme/sam/manager/view/Notifier;
.super Ljava/lang/Object;
.source "Notifier.java"


# static fields
.field private static m_context:Landroid/content/Context;

.field private static m_notifManager:Landroid/app/NotificationManager;

.field private static m_notifications:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/slideme/sam/manager/model/domain/SamNotification;",
            ">;"
        }
    .end annotation
.end field

.field static updateNotifications:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    new-instance v0, Lcom/slideme/sam/manager/view/Notifier$1;

    invoke-direct {v0}, Lcom/slideme/sam/manager/view/Notifier$1;-><init>()V

    sput-object v0, Lcom/slideme/sam/manager/view/Notifier;->updateNotifications:Ljava/lang/Runnable;

    .line 19
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0()Ljava/lang/String;
    .locals 1

    .prologue
    .line 190
    invoke-static {}, Lcom/slideme/sam/manager/view/Notifier;->getNotifsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1()Ljava/util/Date;
    .locals 1

    .prologue
    .line 135
    invoke-static {}, Lcom/slideme/sam/manager/view/Notifier;->getLastUpdateDate()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2(Ljava/lang/String;Ljava/util/Date;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 85
    invoke-static {p0, p1}, Lcom/slideme/sam/manager/view/Notifier;->getNewNotifications(Ljava/lang/String;Ljava/util/Date;)V

    return-void
.end method

.method static synthetic access$3()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/slideme/sam/manager/view/Notifier;->m_notifications:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$4(Lcom/slideme/sam/manager/model/domain/SamNotification;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 114
    invoke-static {p0, p1}, Lcom/slideme/sam/manager/view/Notifier;->postNotification(Lcom/slideme/sam/manager/model/domain/SamNotification;I)V

    return-void
.end method

.method static synthetic access$5(Ljava/util/Date;)V
    .locals 0
    .parameter

    .prologue
    .line 169
    invoke-static {p0}, Lcom/slideme/sam/manager/view/Notifier;->writeLastUpdateDate(Ljava/util/Date;)V

    return-void
.end method

.method private static getLastUpdateDate()Ljava/util/Date;
    .locals 10

    .prologue
    const/16 v9, 0xb

    .line 137
    new-instance v4, Ljava/util/Date;

    const/16 v8, 0x64

    invoke-direct {v4, v8, v9, v9}, Ljava/util/Date;-><init>(III)V

    .line 140
    .local v4, date:Ljava/util/Date;
    :try_start_0
    sget-object v8, Lcom/slideme/sam/manager/view/Notifier;->m_context:Landroid/content/Context;

    const-string v9, "sam.config"

    invoke-virtual {v8, v9}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v3

    .line 141
    .local v3, configStream:Ljava/io/FileInputStream;
    if-eqz v3, :cond_1

    .line 142
    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 145
    .local v2, configReader:Ljava/io/InputStreamReader;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 146
    .local v5, strBuilder:Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->read()I

    move-result v0

    .local v0, ch:I
    const/4 v8, -0x1

    if-ne v0, v8, :cond_2

    .line 149
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 150
    .local v1, config:Ljava/lang/String;
    const-string v8, "notifDate"

    invoke-virtual {v1, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-ltz v8, :cond_0

    .line 151
    const-string v8, "\""

    invoke-virtual {v1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 152
    .local v7, strings:[Ljava/lang/String;
    const/4 v8, 0x1

    aget-object v6, v7, v8

    .line 153
    .local v6, strDate:Ljava/lang/String;
    new-instance v8, Ljava/text/SimpleDateFormat;

    const-string v9, "MM/dd/yy HH:mm"

    invoke-direct {v8, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    .line 155
    .end local v6           #strDate:Ljava/lang/String;
    .end local v7           #strings:[Ljava/lang/String;
    :cond_0
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V

    .line 161
    .end local v0           #ch:I
    .end local v1           #config:Ljava/lang/String;
    .end local v2           #configReader:Ljava/io/InputStreamReader;
    .end local v3           #configStream:Ljava/io/FileInputStream;
    .end local v5           #strBuilder:Ljava/lang/StringBuilder;
    :cond_1
    :goto_1
    return-object v4

    .line 147
    .restart local v0       #ch:I
    .restart local v2       #configReader:Ljava/io/InputStreamReader;
    .restart local v3       #configStream:Ljava/io/FileInputStream;
    .restart local v5       #strBuilder:Ljava/lang/StringBuilder;
    :cond_2
    int-to-char v8, v0

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 158
    .end local v0           #ch:I
    .end local v2           #configReader:Ljava/io/InputStreamReader;
    .end local v3           #configStream:Ljava/io/FileInputStream;
    .end local v5           #strBuilder:Ljava/lang/StringBuilder;
    :catch_0
    move-exception v8

    goto :goto_1
.end method

.method private static getNewNotifications(Ljava/lang/String;Ljava/util/Date;)V
    .locals 6
    .parameter "string"
    .parameter "lastUpdate"

    .prologue
    .line 86
    if-nez p0, :cond_1

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 90
    :cond_1
    :try_start_0
    const-string v3, "\n"

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 91
    .local v2, strNotifications:[Ljava/lang/String;
    array-length v3, v2

    if-lez v3, :cond_0

    .line 93
    array-length v3, v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_0

    aget-object v1, v2, v4

    .line 94
    .local v1, strNotification:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_3

    .line 93
    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 97
    :cond_3
    new-instance v0, Lcom/slideme/sam/manager/model/domain/SamNotification;

    invoke-direct {v0, v1}, Lcom/slideme/sam/manager/model/domain/SamNotification;-><init>(Ljava/lang/String;)V

    .line 98
    .local v0, notification:Lcom/slideme/sam/manager/model/domain/SamNotification;
    invoke-virtual {v0}, Lcom/slideme/sam/manager/model/domain/SamNotification;->getMessage()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 99
    invoke-virtual {v0}, Lcom/slideme/sam/manager/model/domain/SamNotification;->getDate()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 100
    invoke-static {}, Lcom/slideme/sam/manager/view/Notifier;->getNotifications()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 104
    .end local v0           #notification:Lcom/slideme/sam/manager/model/domain/SamNotification;
    .end local v1           #strNotification:Ljava/lang/String;
    .end local v2           #strNotifications:[Ljava/lang/String;
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private static getNotifications()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/slideme/sam/manager/model/domain/SamNotification;",
            ">;"
        }
    .end annotation

    .prologue
    .line 30
    sget-object v0, Lcom/slideme/sam/manager/view/Notifier;->m_notifications:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/slideme/sam/manager/view/Notifier;->m_notifications:Ljava/util/ArrayList;

    .line 33
    :cond_0
    sget-object v0, Lcom/slideme/sam/manager/view/Notifier;->m_notifications:Ljava/util/ArrayList;

    return-object v0
.end method

.method private static getNotifsString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 191
    const/4 v2, 0x0

    .line 193
    .local v2, notifications:Ljava/lang/String;
    :try_start_0
    sget-object v5, Lcom/slideme/sam/manager/model/SamConstants;->NOTIFICATION_URL:Ljava/lang/String;

    const/4 v6, 0x3

    invoke-static {v5, v6}, Lcom/slideme/sam/manager/model/data/net/HTTPUtils;->httpGet(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v1

    .line 194
    .local v1, input:Ljava/io/InputStream;
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 197
    .local v3, reader:Ljava/io/InputStreamReader;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 198
    .local v4, strBuilder:Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->read()I

    move-result v0

    .local v0, ch:I
    const/4 v5, -0x1

    if-ne v0, v5, :cond_0

    .line 201
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 205
    .end local v0           #ch:I
    .end local v1           #input:Ljava/io/InputStream;
    .end local v3           #reader:Ljava/io/InputStreamReader;
    .end local v4           #strBuilder:Ljava/lang/StringBuilder;
    :goto_1
    return-object v2

    .line 199
    .restart local v0       #ch:I
    .restart local v1       #input:Ljava/io/InputStream;
    .restart local v3       #reader:Ljava/io/InputStreamReader;
    .restart local v4       #strBuilder:Ljava/lang/StringBuilder;
    :cond_0
    int-to-char v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 203
    .end local v0           #ch:I
    .end local v1           #input:Ljava/io/InputStream;
    .end local v3           #reader:Ljava/io/InputStreamReader;
    .end local v4           #strBuilder:Ljava/lang/StringBuilder;
    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method private static postNotification(Lcom/slideme/sam/manager/model/domain/SamNotification;I)V
    .locals 7
    .parameter "samNotification"
    .parameter "id"

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/slideme/sam/manager/model/domain/SamNotification;->getTitle()Ljava/lang/String;

    move-result-object v3

    .line 117
    .local v3, titleText:Ljava/lang/CharSequence;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 118
    .local v1, displayNotif:Landroid/content/Intent;
    const-string v4, "TITLE"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 119
    const-string v4, "CONTENT"

    invoke-virtual {p0}, Lcom/slideme/sam/manager/model/domain/SamNotification;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 120
    sget-object v4, Lcom/slideme/sam/manager/view/Notifier;->m_context:Landroid/content/Context;

    const-class v5, Lcom/slideme/sam/manager/controller/activities/notification/NotificationActivity;

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 122
    new-instance v2, Landroid/app/Notification;

    const v4, 0x7f020046

    .line 123
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 122
    invoke-direct {v2, v4, v3, v5, v6}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 124
    .local v2, notification:Landroid/app/Notification;
    sget-object v4, Lcom/slideme/sam/manager/view/Notifier;->m_context:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-static {v4, p1, v1, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 125
    .local v0, contentIntent:Landroid/app/PendingIntent;
    sget-object v4, Lcom/slideme/sam/manager/view/Notifier;->m_context:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/slideme/sam/manager/model/domain/SamNotification;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v3, v5, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 127
    sget-object v4, Lcom/slideme/sam/manager/view/Notifier;->m_notifManager:Landroid/app/NotificationManager;

    const v5, 0x7f080013

    add-int/2addr v5, p1

    invoke-virtual {v4, v5, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 128
    return-void
.end method

.method public static updateNotifications(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 42
    sput-object p0, Lcom/slideme/sam/manager/view/Notifier;->m_context:Landroid/content/Context;

    .line 44
    sget-object v1, Lcom/slideme/sam/manager/view/Notifier;->m_notifManager:Landroid/app/NotificationManager;

    if-nez v1, :cond_0

    .line 46
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 45
    .end local p0
    check-cast p0, Landroid/app/NotificationManager;

    sput-object p0, Lcom/slideme/sam/manager/view/Notifier;->m_notifManager:Landroid/app/NotificationManager;

    .line 48
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    sget-object v1, Lcom/slideme/sam/manager/view/Notifier;->updateNotifications:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 49
    .local v0, updNotifications:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 50
    return-void
.end method

.method private static writeLastUpdateDate(Ljava/util/Date;)V
    .locals 7
    .parameter "lastUpdate"

    .prologue
    .line 172
    :try_start_0
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "MM/dd/yy HH:mm"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 173
    .local v3, formatter:Ljava/text/SimpleDateFormat;
    invoke-virtual {v3, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 175
    .local v2, date:Ljava/lang/String;
    sget-object v4, Lcom/slideme/sam/manager/view/Notifier;->m_context:Landroid/content/Context;

    const-string v5, "sam.config"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0

    .line 176
    .local v0, configStream:Ljava/io/FileOutputStream;
    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-direct {v1, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 177
    .local v1, configWriter:Ljava/io/OutputStreamWriter;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "notifDate=\""

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 178
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->flush()V

    .line 179
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    .end local v0           #configStream:Ljava/io/FileOutputStream;
    .end local v1           #configWriter:Ljava/io/OutputStreamWriter;
    .end local v2           #date:Ljava/lang/String;
    .end local v3           #formatter:Ljava/text/SimpleDateFormat;
    :goto_0
    return-void

    .line 181
    :catch_0
    move-exception v4

    goto :goto_0
.end method
