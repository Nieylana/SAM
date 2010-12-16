.class public final Lcom/slideme/sam/manager/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/slideme/sam/manager/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final Gallery1:[I = null

.field public static final Gallery1_android_galleryItemBackground:I = 0x0

.field public static final LabelView:[I = null

.field public static final LabelView_text:I = 0x0

.field public static final LabelView_textColor:I = 0x1

.field public static final LabelView_textSize:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1074
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 1075
    const v2, 0x101004c

    aput v2, v0, v1

    .line 1074
    sput-object v0, Lcom/slideme/sam/manager/R$styleable;->Gallery1:[I

    .line 1097
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/slideme/sam/manager/R$styleable;->LabelView:[I

    .line 1063
    return-void

    .line 1097
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x1t 0x7ft
        0x1t 0x0t 0x1t 0x7ft
        0x2t 0x0t 0x1t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1063
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
