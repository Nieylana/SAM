.class public Lcom/slideme/sam/manager/model/business/SamAutoUpdater;
.super Ljava/lang/Object;
.source "SamAutoUpdater.java"


# static fields
.field private static final DOWNLOAD_FAIL:I = 0xb

.field private static final DOWNLOAD_SUCCESS:I = 0xa

.field private static final INSTALL_FINISH:I = 0xd

.field private static final INSTALL_START:I = 0xc

.field private static final UPDATE_DIALOG:I = 0x1

.field private static m_checkUpdate:Z


# instance fields
.field private activity:Landroid/app/Activity;

.field private downloaderThread:Ljava/lang/Runnable;

.field private m_downFail:Landroid/widget/Toast;

.field private m_downSuccess:Landroid/widget/Toast;

.field private m_installFinished:Landroid/widget/Toast;

.field private m_installStart:Landroid/widget/Toast;

.field private m_updateDialog:Landroid/app/Dialog;

.field private progressHandler:Landroid/os/Handler;

.field private updateCheckThread:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x1

    sput-boolean v0, Lcom/slideme/sam/manager/model/business/SamAutoUpdater;->m_checkUpdate:Z

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    const/4 v1, 0x1

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    new-instance v0, Lcom/slideme/sam/manager/model/business/SamAutoUpdater$1;

    invoke-direct {v0, p0}, Lcom/slideme/sam/manager/model/business/SamAutoUpdater$1;-><init>(Lcom/slideme/sam/manager/model/business/SamAutoUpdater;)V

    iput-object v0, p0, Lcom/slideme/sam/manager/model/business/SamAutoUpdater;->progressHandler:Landroid/os/Handler;

    .line 162
    new-instance v0, Lcom/slideme/sam/manager/model/business/SamAutoUpdater$2;

    invoke-direct {v0, p0}, Lcom/slideme/sam/manager/model/business/SamAutoUpdater$2;-><init>(Lcom/slideme/sam/manager/model/business/SamAutoUpdater;)V

    iput-object v0, p0, Lcom/slideme/sam/manager/model/business/SamAutoUpdater;->downloaderThread:Ljava/lang/Runnable;

    .line 250
    new-instance v0, Lcom/slideme/sam/manager/model/business/SamAutoUpdater$3;

    invoke-direct {v0, p0}, Lcom/slideme/sam/manager/model/business/SamAutoUpdater$3;-><init>(Lcom/slideme/sam/manager/model/business/SamAutoUpdater;)V

    iput-object v0, p0, Lcom/slideme/sam/manager/model/business/SamAutoUpdater;->updateCheckThread:Ljava/lang/Runnable;

    .line 77
    const v0, 0x7f08001a

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/slideme/sam/manager/model/business/SamAutoUpdater;->m_downSuccess:Landroid/widget/Toast;

    .line 78
    const v0, 0x7f080019

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/slideme/sam/manager/model/business/SamAutoUpdater;->m_downFail:Landroid/widget/Toast;

    .line 80
    const v0, 0x7f08001b

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/slideme/sam/manager/model/business/SamAutoUpdater;->m_installStart:Landroid/widget/Toast;

    .line 82
    const v0, 0x7f08001c

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/slideme/sam/manager/model/business/SamAutoUpdater;->m_installFinished:Landroid/widget/Toast;

    .line 84
    invoke-direct {p0, p1}, Lcom/slideme/sam/manager/model/business/SamAutoUpdater;->createUpdateDialog(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/slideme/sam/manager/model/business/SamAutoUpdater;->m_updateDialog:Landroid/app/Dialog;

    .line 86
    iput-object p1, p0, Lcom/slideme/sam/manager/model/business/SamAutoUpdater;->activity:Landroid/app/Activity;

    .line 87
    return-void
.end method

.method static synthetic access$0(Lcom/slideme/sam/manager/model/business/SamAutoUpdater;)Landroid/widget/Toast;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/slideme/sam/manager/model/business/SamAutoUpdater;->m_downSuccess:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$1(Lcom/slideme/sam/manager/model/business/SamAutoUpdater;)Landroid/widget/Toast;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/slideme/sam/manager/model/business/SamAutoUpdater;->m_downFail:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$2(Lcom/slideme/sam/manager/model/business/SamAutoUpdater;)Landroid/widget/Toast;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/slideme/sam/manager/model/business/SamAutoUpdater;->m_installStart:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$3(Lcom/slideme/sam/manager/model/business/SamAutoUpdater;)Landroid/widget/Toast;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/slideme/sam/manager/model/business/SamAutoUpdater;->m_installFinished:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$4(Lcom/slideme/sam/manager/model/business/SamAutoUpdater;)Landroid/app/Dialog;
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/slideme/sam/manager/model/business/SamAutoUpdater;->m_updateDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$5(Lcom/slideme/sam/manager/model/business/SamAutoUpdater;)Landroid/app/Activity;
    .locals 1
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcom/slideme/sam/manager/model/business/SamAutoUpdater;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$6(Lcom/slideme/sam/manager/model/business/SamAutoUpdater;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 129
    iget-object v0, p0, Lcom/slideme/sam/manager/model/business/SamAutoUpdater;->progressHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$7()Z
    .locals 1

    .prologue
    .line 59
    sget-boolean v0, Lcom/slideme/sam/manager/model/business/SamAutoUpdater;->m_checkUpdate:Z

    return v0
.end method

.method static synthetic access$8(Z)V
    .locals 0
    .parameter

    .prologue
    .line 59
    sput-boolean p0, Lcom/slideme/sam/manager/model/business/SamAutoUpdater;->m_checkUpdate:Z

    return-void
.end method

.method static synthetic access$9(Lcom/slideme/sam/manager/model/business/SamAutoUpdater;)Ljava/lang/Runnable;
    .locals 1
    .parameter

    .prologue
    .line 162
    iget-object v0, p0, Lcom/slideme/sam/manager/model/business/SamAutoUpdater;->downloaderThread:Ljava/lang/Runnable;

    return-object v0
.end method

.method private createUpdateDialog(Landroid/app/Activity;)Landroid/app/Dialog;
    .locals 6
    .parameter "activity"

    .prologue
    .line 100
    iput-object p1, p0, Lcom/slideme/sam/manager/model/business/SamAutoUpdater;->activity:Landroid/app/Activity;

    .line 101
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 102
    .local v3, updateBuilder:Landroid/app/AlertDialog$Builder;
    const v4, 0x7f080016

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 104
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 105
    .local v0, factory:Landroid/view/LayoutInflater;
    const v4, 0x7f030025

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 106
    .local v2, textEntryView:Landroid/view/View;
    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 108
    const v4, 0x7f0a00b5

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 109
    .local v1, text:Landroid/widget/TextView;
    const v4, 0x7f080017

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 111
    const v4, 0x7f080071

    invoke-virtual {p1, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/slideme/sam/manager/model/business/SamAutoUpdater$4;

    invoke-direct {v5, p0, p1}, Lcom/slideme/sam/manager/model/business/SamAutoUpdater$4;-><init>(Lcom/slideme/sam/manager/model/business/SamAutoUpdater;Landroid/app/Activity;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 119
    const v4, 0x7f080072

    invoke-virtual {p1, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/slideme/sam/manager/model/business/SamAutoUpdater$5;

    invoke-direct {v5, p0}, Lcom/slideme/sam/manager/model/business/SamAutoUpdater$5;-><init>(Lcom/slideme/sam/manager/model/business/SamAutoUpdater;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 124
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    return-object v4
.end method


# virtual methods
.method public update()V
    .locals 2

    .prologue
    .line 90
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/slideme/sam/manager/model/business/SamAutoUpdater;->updateCheckThread:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 91
    .local v0, check:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 92
    return-void
.end method
