.class public Lcom/slideme/sam/manager/controller/activities/notification/SortDialog;
.super Landroid/app/AlertDialog;
.source "SortDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/AlertDialog;",
        "Landroid/content/DialogInterface$OnClickListener;",
        "Landroid/content/DialogInterface$OnCancelListener;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field activity:Landroid/app/Activity;

.field asc:Landroid/widget/RadioButton;

.field ascending:Z

.field desc:Landroid/widget/RadioButton;

.field descending:Z

.field mContext:Landroid/content/Context;

.field mIntent:Landroid/content/Intent;

.field mListView:Landroid/widget/ListView;

.field options:[Ljava/lang/String;

.field selection:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/Activity;)V
    .locals 4
    .parameter "context"
    .parameter "a"

    .prologue
    const/4 v3, 0x0

    .line 33
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 34
    iput-object p1, p0, Lcom/slideme/sam/manager/controller/activities/notification/SortDialog;->mContext:Landroid/content/Context;

    .line 35
    iput-object p2, p0, Lcom/slideme/sam/manager/controller/activities/notification/SortDialog;->activity:Landroid/app/Activity;

    .line 36
    invoke-virtual {p2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/slideme/sam/manager/controller/activities/notification/SortDialog;->mIntent:Landroid/content/Intent;

    .line 37
    iget-object v0, p0, Lcom/slideme/sam/manager/controller/activities/notification/SortDialog;->mIntent:Landroid/content/Intent;

    const-string v1, "whichButton"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/slideme/sam/manager/controller/activities/notification/SortDialog;->selection:I

    .line 38
    iget-object v0, p0, Lcom/slideme/sam/manager/controller/activities/notification/SortDialog;->mIntent:Landroid/content/Intent;

    const-string v1, "asc"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/slideme/sam/manager/controller/activities/notification/SortDialog;->ascending:Z

    .line 39
    iget-object v0, p0, Lcom/slideme/sam/manager/controller/activities/notification/SortDialog;->mIntent:Landroid/content/Intent;

    const-string v1, "desc"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/slideme/sam/manager/controller/activities/notification/SortDialog;->descending:Z

    .line 40
    invoke-direct {p0}, Lcom/slideme/sam/manager/controller/activities/notification/SortDialog;->init()V

    .line 42
    return-void
.end method

.method private init()V
    .locals 9

    .prologue
    const v8, 0x103000c

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 45
    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/String;

    .line 46
    iget-object v3, p0, Lcom/slideme/sam/manager/controller/activities/notification/SortDialog;->mContext:Landroid/content/Context;

    const v4, 0x7f0800a6

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    .line 47
    iget-object v3, p0, Lcom/slideme/sam/manager/controller/activities/notification/SortDialog;->mContext:Landroid/content/Context;

    const v4, 0x7f0800aa

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    const/4 v3, 0x2

    .line 48
    iget-object v4, p0, Lcom/slideme/sam/manager/controller/activities/notification/SortDialog;->mContext:Landroid/content/Context;

    const v5, 0x7f080054

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    .line 49
    iget-object v4, p0, Lcom/slideme/sam/manager/controller/activities/notification/SortDialog;->mContext:Landroid/content/Context;

    const v5, 0x7f0800ae

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    .line 50
    iget-object v4, p0, Lcom/slideme/sam/manager/controller/activities/notification/SortDialog;->mContext:Landroid/content/Context;

    const v5, 0x7f0800a7

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    .line 51
    iget-object v4, p0, Lcom/slideme/sam/manager/controller/activities/notification/SortDialog;->mContext:Landroid/content/Context;

    const v5, 0x7f0800ab

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    .line 52
    iget-object v4, p0, Lcom/slideme/sam/manager/controller/activities/notification/SortDialog;->mContext:Landroid/content/Context;

    const v5, 0x7f0800ac

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 45
    iput-object v2, p0, Lcom/slideme/sam/manager/controller/activities/notification/SortDialog;->options:[Ljava/lang/String;

    .line 55
    invoke-virtual {p0, v7}, Lcom/slideme/sam/manager/controller/activities/notification/SortDialog;->setInverseBackgroundForced(Z)V

    .line 56
    iget-object v2, p0, Lcom/slideme/sam/manager/controller/activities/notification/SortDialog;->mContext:Landroid/content/Context;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 57
    .local v0, inflate:Landroid/view/LayoutInflater;
    new-instance v2, Landroid/view/ContextThemeWrapper;

    iget-object v3, p0, Lcom/slideme/sam/manager/controller/activities/notification/SortDialog;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v8}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v2}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 58
    const v2, 0x7f030021

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 59
    .local v1, view:Landroid/view/View;
    invoke-virtual {p0, v1}, Lcom/slideme/sam/manager/controller/activities/notification/SortDialog;->setView(Landroid/view/View;)V

    .line 61
    iget-object v2, p0, Lcom/slideme/sam/manager/controller/activities/notification/SortDialog;->mContext:Landroid/content/Context;

    const v3, 0x7f0800ad

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/slideme/sam/manager/controller/activities/notification/SortDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 63
    const v2, 0x7f0a00a2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/slideme/sam/manager/controller/activities/notification/SortDialog;->mListView:Landroid/widget/ListView;

    .line 64
    iget-object v2, p0, Lcom/slideme/sam/manager/controller/activities/notification/SortDialog;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v6}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 65
    iget-object v2, p0, Lcom/slideme/sam/manager/controller/activities/notification/SortDialog;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v6}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 66
    iget-object v2, p0, Lcom/slideme/sam/manager/controller/activities/notification/SortDialog;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v7}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 68
    iget-object v2, p0, Lcom/slideme/sam/manager/controller/activities/notification/SortDialog;->mListView:Landroid/widget/ListView;

    new-instance v3, Landroid/widget/ArrayAdapter;

    .line 69
    new-instance v4, Landroid/view/ContextThemeWrapper;

    iget-object v5, p0, Lcom/slideme/sam/manager/controller/activities/notification/SortDialog;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5, v8}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 70
    const v5, 0x109000f

    iget-object v6, p0, Lcom/slideme/sam/manager/controller/activities/notification/SortDialog;->options:[Ljava/lang/String;

    invoke-direct {v3, v4, v5, v6}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 68
    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 72
    const v2, 0x7f0a00a3

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, p0, Lcom/slideme/sam/manager/controller/activities/notification/SortDialog;->asc:Landroid/widget/RadioButton;

    .line 73
    const v2, 0x7f0a00a4

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, p0, Lcom/slideme/sam/manager/controller/activities/notification/SortDialog;->desc:Landroid/widget/RadioButton;

    .line 74
    iget-object v2, p0, Lcom/slideme/sam/manager/controller/activities/notification/SortDialog;->asc:Landroid/widget/RadioButton;

    iget-boolean v3, p0, Lcom/slideme/sam/manager/controller/activities/notification/SortDialog;->ascending:Z

    invoke-virtual {v2, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 75
    iget-object v2, p0, Lcom/slideme/sam/manager/controller/activities/notification/SortDialog;->desc:Landroid/widget/RadioButton;

    iget-boolean v3, p0, Lcom/slideme/sam/manager/controller/activities/notification/SortDialog;->descending:Z

    invoke-virtual {v2, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 77
    iget-object v2, p0, Lcom/slideme/sam/manager/controller/activities/notification/SortDialog;->mListView:Landroid/widget/ListView;

    .line 78
    new-instance v3, Lcom/slideme/sam/manager/controller/activities/notification/SortDialog$1;

    invoke-direct {v3, p0}, Lcom/slideme/sam/manager/controller/activities/notification/SortDialog$1;-><init>(Lcom/slideme/sam/manager/controller/activities/notification/SortDialog;)V

    .line 77
    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 98
    iget-object v2, p0, Lcom/slideme/sam/manager/controller/activities/notification/SortDialog;->mListView:Landroid/widget/ListView;

    iget v3, p0, Lcom/slideme/sam/manager/controller/activities/notification/SortDialog;->selection:I

    invoke-virtual {v2, v3, v7}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 100
    invoke-virtual {p0, p0}, Lcom/slideme/sam/manager/controller/activities/notification/SortDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 102
    const/4 v2, -0x1

    iget-object v3, p0, Lcom/slideme/sam/manager/controller/activities/notification/SortDialog;->mContext:Landroid/content/Context;

    const v4, 0x7f0800d6

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p0, v2, v3, p0}, Lcom/slideme/sam/manager/controller/activities/notification/SortDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 103
    const/4 v2, -0x2

    iget-object v3, p0, Lcom/slideme/sam/manager/controller/activities/notification/SortDialog;->mContext:Landroid/content/Context;

    const v4, 0x7f080052

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p0, v2, v3, p0}, Lcom/slideme/sam/manager/controller/activities/notification/SortDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 104
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .parameter "dialogInterface"

    .prologue
    .line 129
    invoke-virtual {p0}, Lcom/slideme/sam/manager/controller/activities/notification/SortDialog;->dismiss()V

    .line 130
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialogInterface"
    .parameter "i"

    .prologue
    .line 107
    packed-switch p2, :pswitch_data_0

    .line 126
    :goto_0
    return-void

    .line 109
    :pswitch_0
    iget-object v2, p0, Lcom/slideme/sam/manager/controller/activities/notification/SortDialog;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v1

    .line 111
    .local v1, position:I
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/slideme/sam/manager/controller/activities/notification/SortDialog;->mIntent:Landroid/content/Intent;

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 112
    .local v0, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/slideme/sam/manager/controller/activities/notification/SortDialog;->mContext:Landroid/content/Context;

    const-class v3, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 113
    const-string v2, "whichButton"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 115
    const-string v2, "asc"

    iget-object v3, p0, Lcom/slideme/sam/manager/controller/activities/notification/SortDialog;->asc:Landroid/widget/RadioButton;

    invoke-virtual {v3}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 116
    const-string v2, "desc"

    iget-object v3, p0, Lcom/slideme/sam/manager/controller/activities/notification/SortDialog;->desc:Landroid/widget/RadioButton;

    invoke-virtual {v3}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 117
    const-string v2, "SORT"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 118
    iget-object v2, p0, Lcom/slideme/sam/manager/controller/activities/notification/SortDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 119
    iget-object v2, p0, Lcom/slideme/sam/manager/controller/activities/notification/SortDialog;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 120
    invoke-virtual {p0}, Lcom/slideme/sam/manager/controller/activities/notification/SortDialog;->dismiss()V

    goto :goto_0

    .line 123
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #position:I
    :pswitch_1
    invoke-virtual {p0}, Lcom/slideme/sam/manager/controller/activities/notification/SortDialog;->dismiss()V

    goto :goto_0

    .line 107
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .parameter
    .parameter "view"
    .parameter "i"
    .parameter "l"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 134
    .local p1, adapterView:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method
