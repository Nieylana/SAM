.class public Lcom/slideme/sam/manager/controller/activities/login/LoginActivity;
.super Lcom/slideme/sam/manager/controller/activities/generic/BaseActivity;
.source "LoginActivity.java"


# static fields
.field public static final LOGIN_ERROR:I = 0x3

.field public static final LOGIN_FAILED:I = 0x2

.field public static final LOGIN_SUCCESS:I = 0x1

.field public static final RESULT_ERROR:I = 0xb

.field public static final RESULT_FAILED:I = 0xa

.field private static dialog:Landroid/app/ProgressDialog;


# instance fields
.field private hasMenu:Z

.field loginEventhandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/slideme/sam/manager/controller/activities/generic/BaseActivity;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/slideme/sam/manager/controller/activities/login/LoginActivity;->hasMenu:Z

    .line 29
    new-instance v0, Lcom/slideme/sam/manager/controller/activities/login/LoginActivity$1;

    invoke-direct {v0, p0}, Lcom/slideme/sam/manager/controller/activities/login/LoginActivity$1;-><init>(Lcom/slideme/sam/manager/controller/activities/login/LoginActivity;)V

    iput-object v0, p0, Lcom/slideme/sam/manager/controller/activities/login/LoginActivity;->loginEventhandler:Landroid/os/Handler;

    .line 19
    return-void
.end method

.method static synthetic access$0()Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 131
    sget-object v0, Lcom/slideme/sam/manager/controller/activities/login/LoginActivity;->dialog:Landroid/app/ProgressDialog;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "bundle"

    .prologue
    .line 68
    invoke-super {p0, p1}, Lcom/slideme/sam/manager/controller/activities/generic/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 69
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/slideme/sam/manager/controller/activities/login/LoginActivity;->setResult(I)V

    .line 71
    const v5, 0x7f030017

    invoke-virtual {p0, v5}, Lcom/slideme/sam/manager/controller/activities/login/LoginActivity;->setContentView(I)V

    .line 72
    const v5, 0x7f0a0086

    invoke-virtual {p0, v5}, Lcom/slideme/sam/manager/controller/activities/login/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 73
    .local v4, username:Landroid/widget/TextView;
    const v5, 0x7f0a0088

    invoke-virtual {p0, v5}, Lcom/slideme/sam/manager/controller/activities/login/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 78
    .local v3, password:Landroid/widget/TextView;
    const v5, 0x7f0a0089

    invoke-virtual {p0, v5}, Lcom/slideme/sam/manager/controller/activities/login/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 79
    .local v1, description:Landroid/widget/TextView;
    const v5, 0x7f08007a

    invoke-virtual {p0, v5}, Lcom/slideme/sam/manager/controller/activities/login/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    const v5, 0x7f0a008d

    invoke-virtual {p0, v5}, Lcom/slideme/sam/manager/controller/activities/login/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 83
    .local v0, cancelButton:Landroid/widget/Button;
    new-instance v5, Lcom/slideme/sam/manager/controller/activities/login/LoginActivity$2;

    invoke-direct {v5, p0}, Lcom/slideme/sam/manager/controller/activities/login/LoginActivity$2;-><init>(Lcom/slideme/sam/manager/controller/activities/login/LoginActivity;)V

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    const v5, 0x7f0a008b

    invoke-virtual {p0, v5}, Lcom/slideme/sam/manager/controller/activities/login/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 91
    .local v2, loginButton:Landroid/widget/Button;
    new-instance v5, Lcom/slideme/sam/manager/controller/activities/login/LoginActivity$3;

    invoke-direct {v5, p0, v4, v3}, Lcom/slideme/sam/manager/controller/activities/login/LoginActivity$3;-><init>(Lcom/slideme/sam/manager/controller/activities/login/LoginActivity;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 90
    invoke-virtual {v2, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 2
    .parameter "id"

    .prologue
    .line 135
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/slideme/sam/manager/controller/activities/login/LoginActivity;->dialog:Landroid/app/ProgressDialog;

    .line 136
    sget-object v0, Lcom/slideme/sam/manager/controller/activities/login/LoginActivity;->dialog:Landroid/app/ProgressDialog;

    const v1, 0x7f080070

    invoke-virtual {p0, v1}, Lcom/slideme/sam/manager/controller/activities/login/LoginActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 137
    sget-object v0, Lcom/slideme/sam/manager/controller/activities/login/LoginActivity;->dialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 138
    sget-object v0, Lcom/slideme/sam/manager/controller/activities/login/LoginActivity;->dialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x1

    .line 58
    invoke-super {p0, p1}, Lcom/slideme/sam/manager/controller/activities/generic/BaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 59
    iget-boolean v0, p0, Lcom/slideme/sam/manager/controller/activities/login/LoginActivity;->hasMenu:Z

    if-nez v0, :cond_0

    .line 60
    new-array v0, v3, [I

    const/4 v1, 0x4

    aput v1, v0, v2

    const/4 v1, 0x2

    aput v3, v0, v1

    invoke-virtual {p0, p1, v0}, Lcom/slideme/sam/manager/controller/activities/login/LoginActivity;->addToMenu(Landroid/view/Menu;[I)V

    .line 61
    iput-boolean v2, p0, Lcom/slideme/sam/manager/controller/activities/login/LoginActivity;->hasMenu:Z

    .line 64
    :cond_0
    return v2
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 154
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 155
    invoke-virtual {p0}, Lcom/slideme/sam/manager/controller/activities/login/LoginActivity;->finish()V

    .line 156
    const v0, 0x7f080079

    invoke-virtual {p0, v0}, Lcom/slideme/sam/manager/controller/activities/login/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 157
    const/4 v0, 0x1

    .line 159
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/slideme/sam/manager/controller/activities/generic/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 143
    invoke-super {p0}, Lcom/slideme/sam/manager/controller/activities/generic/BaseActivity;->onStart()V

    .line 144
    const v0, 0x7f080007

    invoke-virtual {p0, v0}, Lcom/slideme/sam/manager/controller/activities/login/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    .line 145
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 149
    invoke-super {p0}, Lcom/slideme/sam/manager/controller/activities/generic/BaseActivity;->onStop()V

    .line 150
    invoke-static {p0}, Lcom/flurry/android/FlurryAgent;->onEndSession(Landroid/content/Context;)V

    .line 151
    return-void
.end method
