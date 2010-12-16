.class Lcom/slideme/sam/manager/model/utils/GifDecoder$GifFrame;
.super Ljava/lang/Object;
.source "GifDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/slideme/sam/manager/model/utils/GifDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GifFrame"
.end annotation


# instance fields
.field public delay:I

.field public image:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;I)V
    .locals 0
    .parameter "im"
    .parameter "del"

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput-object p1, p0, Lcom/slideme/sam/manager/model/utils/GifDecoder$GifFrame;->image:Landroid/graphics/Bitmap;

    .line 107
    iput p2, p0, Lcom/slideme/sam/manager/model/utils/GifDecoder$GifFrame;->delay:I

    .line 108
    return-void
.end method
