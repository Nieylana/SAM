.class Lcom/slideme/sam/manager/controller/activities/installer/Installer$EfficientAdapter;
.super Landroid/widget/BaseAdapter;
.source "Installer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/slideme/sam/manager/controller/activities/installer/Installer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EfficientAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/slideme/sam/manager/controller/activities/installer/Installer$EfficientAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private final mInflater:Landroid/view/LayoutInflater;

.field private final pm:Landroid/content/pm/PackageManager;

.field final synthetic this$0:Lcom/slideme/sam/manager/controller/activities/installer/Installer;


# direct methods
.method public constructor <init>(Lcom/slideme/sam/manager/controller/activities/installer/Installer;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 204
    iput-object p1, p0, Lcom/slideme/sam/manager/controller/activities/installer/Installer$EfficientAdapter;->this$0:Lcom/slideme/sam/manager/controller/activities/installer/Installer;

    .line 201
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 202
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/slideme/sam/manager/controller/activities/installer/Installer$EfficientAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 203
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/slideme/sam/manager/controller/activities/installer/Installer$EfficientAdapter;->pm:Landroid/content/pm/PackageManager;

    return-void
.end method

.method private sizeText(J)Ljava/lang/String;
    .locals 7
    .parameter "length"

    .prologue
    const-wide/16 v5, 0x400

    .line 255
    div-long v0, p1, v5

    .line 256
    .local v0, kb:J
    div-long v3, v0, v5

    .line 259
    .local v3, x:J
    const-wide/16 v5, 0x1

    cmp-long v5, v3, v5

    if-gez v5, :cond_0

    .line 260
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "KB"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 264
    .local v2, s:Ljava/lang/String;
    :goto_0
    return-object v2

    .line 262
    .end local v2           #s:Ljava/lang/String;
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "MB"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .restart local v2       #s:Ljava/lang/String;
    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/slideme/sam/manager/controller/activities/installer/Installer$EfficientAdapter;->this$0:Lcom/slideme/sam/manager/controller/activities/installer/Installer;

    invoke-static {v0}, Lcom/slideme/sam/manager/controller/activities/installer/Installer;->access$0(Lcom/slideme/sam/manager/controller/activities/installer/Installer;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 211
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 215
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v5, 0x0

    .line 219
    iget-object v3, p0, Lcom/slideme/sam/manager/controller/activities/installer/Installer$EfficientAdapter;->this$0:Lcom/slideme/sam/manager/controller/activities/installer/Installer;

    invoke-static {v3}, Lcom/slideme/sam/manager/controller/activities/installer/Installer;->access$0(Lcom/slideme/sam/manager/controller/activities/installer/Installer;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v5

    .line 251
    :goto_0
    return-object v3

    .line 222
    :cond_0
    iget-object v3, p0, Lcom/slideme/sam/manager/controller/activities/installer/Installer$EfficientAdapter;->this$0:Lcom/slideme/sam/manager/controller/activities/installer/Installer;

    invoke-static {v3}, Lcom/slideme/sam/manager/controller/activities/installer/Installer;->access$0(Lcom/slideme/sam/manager/controller/activities/installer/Installer;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/slideme/sam/manager/model/installer/AppInfo;

    .line 223
    .local v0, ai:Lcom/slideme/sam/manager/model/installer/AppInfo;
    iget-object v2, v0, Lcom/slideme/sam/manager/model/installer/AppInfo;->packageInfo:Landroid/content/pm/PackageInfo;

    .line 225
    .local v2, pi:Landroid/content/pm/PackageInfo;
    if-nez p2, :cond_1

    .line 226
    iget-object v3, p0, Lcom/slideme/sam/manager/controller/activities/installer/Installer$EfficientAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f030026

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 228
    new-instance v1, Lcom/slideme/sam/manager/controller/activities/installer/Installer$EfficientAdapter$ViewHolder;

    invoke-direct {v1, p0}, Lcom/slideme/sam/manager/controller/activities/installer/Installer$EfficientAdapter$ViewHolder;-><init>(Lcom/slideme/sam/manager/controller/activities/installer/Installer$EfficientAdapter;)V

    .line 229
    .local v1, holder:Lcom/slideme/sam/manager/controller/activities/installer/Installer$EfficientAdapter$ViewHolder;
    const v3, 0x7f0a0001

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/slideme/sam/manager/controller/activities/installer/Installer$EfficientAdapter$ViewHolder;->text:Landroid/widget/TextView;

    .line 230
    const v3, 0x7f0a0007

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v1, Lcom/slideme/sam/manager/controller/activities/installer/Installer$EfficientAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 231
    iget-object v3, v1, Lcom/slideme/sam/manager/controller/activities/installer/Installer$EfficientAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v4, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 233
    const v3, 0x7f0a0009

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 232
    iput-object v3, v1, Lcom/slideme/sam/manager/controller/activities/installer/Installer$EfficientAdapter$ViewHolder;->version:Landroid/widget/TextView;

    .line 234
    const v3, 0x7f0a0015

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/slideme/sam/manager/controller/activities/installer/Installer$EfficientAdapter$ViewHolder;->size:Landroid/widget/TextView;

    .line 235
    const v3, 0x7f0a00b6

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/slideme/sam/manager/controller/activities/installer/Installer$EfficientAdapter$ViewHolder;->date:Landroid/widget/TextView;

    .line 236
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 242
    :goto_1
    iget-object v3, v1, Lcom/slideme/sam/manager/controller/activities/installer/Installer$EfficientAdapter$ViewHolder;->text:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/slideme/sam/manager/model/installer/AppInfo;->label:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 244
    iget-object v3, v1, Lcom/slideme/sam/manager/controller/activities/installer/Installer$EfficientAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/slideme/sam/manager/controller/activities/installer/Installer$EfficientAdapter;->pm:Landroid/content/pm/PackageManager;

    .line 245
    iget-object v5, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 244
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 246
    iget-object v3, v1, Lcom/slideme/sam/manager/controller/activities/installer/Installer$EfficientAdapter$ViewHolder;->version:Landroid/widget/TextView;

    iget-object v4, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-nez v4, :cond_2

    const-string v4, "0.0.0"

    :goto_2
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 248
    iget-object v3, v1, Lcom/slideme/sam/manager/controller/activities/installer/Installer$EfficientAdapter$ViewHolder;->size:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/slideme/sam/manager/model/installer/AppInfo;->file:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/slideme/sam/manager/controller/activities/installer/Installer$EfficientAdapter;->sizeText(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 249
    iget-object v3, v1, Lcom/slideme/sam/manager/controller/activities/installer/Installer$EfficientAdapter$ViewHolder;->date:Landroid/widget/TextView;

    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "yy-MMM dd"

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/util/Date;

    iget-object v6, v0, Lcom/slideme/sam/manager/model/installer/AppInfo;->file:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v3, p2

    .line 251
    goto/16 :goto_0

    .line 238
    .end local v1           #holder:Lcom/slideme/sam/manager/controller/activities/installer/Installer$EfficientAdapter$ViewHolder;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/slideme/sam/manager/controller/activities/installer/Installer$EfficientAdapter$ViewHolder;

    .restart local v1       #holder:Lcom/slideme/sam/manager/controller/activities/installer/Installer$EfficientAdapter$ViewHolder;
    goto :goto_1

    .line 247
    :cond_2
    iget-object v4, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    goto :goto_2
.end method
