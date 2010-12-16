.class public Lcom/slideme/sam/manager/model/utils/GifDecoder;
.super Ljava/lang/Object;
.source "GifDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/slideme/sam/manager/model/utils/GifDecoder$GifFrame;
    }
.end annotation


# static fields
.field protected static final MaxStackSize:I = 0x1000

.field public static final STATUS_FORMAT_ERROR:I = 0x1

.field public static final STATUS_OK:I = 0x0

.field public static final STATUS_OPEN_ERROR:I = 0x2


# instance fields
.field protected act:[I

.field protected bgColor:I

.field protected bgIndex:I

.field protected block:[B

.field protected blockSize:I

.field protected delay:I

.field protected dispose:I

.field protected frameCount:I

.field protected frames:Ljava/util/ArrayList;

.field protected gct:[I

.field protected gctFlag:Z

.field protected gctSize:I

.field protected height:I

.field protected ih:I

.field protected image:Landroid/graphics/Bitmap;

.field protected in:Ljava/io/BufferedInputStream;

.field protected interlace:Z

.field protected iw:I

.field protected ix:I

.field protected iy:I

.field protected lastBgColor:I

.field protected lastDispose:I

.field protected lastImage:Landroid/graphics/Bitmap;

.field protected lastRect:Landroid/graphics/Rect;

.field protected lct:[I

.field protected lctFlag:Z

.field protected lctSize:I

.field protected loopCount:I

.field protected pixelAspect:I

.field protected pixelStack:[B

.field protected pixels:[B

.field protected prefix:[S

.field protected status:I

.field protected suffix:[B

.field protected transIndex:I

.field protected transparency:Z

.field protected width:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/4 v0, 0x1

    iput v0, p0, Lcom/slideme/sam/manager/model/utils/GifDecoder;->loopCount:I

    .line 81
    const/16 v0, 0x100

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/slideme/sam/manager/model/utils/GifDecoder;->block:[B

    .line 82
    iput v1, p0, Lcom/slideme/sam/manager/model/utils/GifDecoder;->blockSize:I

    .line 85
    iput v1, p0, Lcom/slideme/sam/manager/model/utils/GifDecoder;->dispose:I

    .line 87
    iput v1, p0, Lcom/slideme/sam/manager/model/utils/GifDecoder;->lastDispose:I

    .line 88
    iput-boolean v1, p0, Lcom/slideme/sam/manager/model/utils/GifDecoder;->transparency:Z

    .line 89
    iput v1, p0, Lcom/slideme/sam/manager/model/utils/GifDecoder;->delay:I

    .line 37
    return-void
.end method


# virtual methods
.method public copyPixelToSetInteger(Landroid/graphics/Bitmap;)[I
    .locals 5
    .parameter "B"

    .prologue
    .line 159
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    mul-int/2addr v3, v4

    new-array v2, v3, [I

    .line 160
    .local v2, tmp:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-lt v0, v3, :cond_0

    .line 165
    return-object v2

    .line 161
    :cond_0
    const/4 v1, 0x0

    .local v1, j:I
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-lt v1, v3, :cond_1

    .line 160
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 162
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    mul-int/2addr v3, v0

    add-int/2addr v3, v1

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v4

    aput v4, v2, v3

    .line 161
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method protected decodeImageData()V
    .locals 25

    .prologue
    .line 390
    const/4 v2, -0x1

    .line 391
    .local v2, NullCode:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/slideme/sam/manager/model/utils/GifDecoder;->iw:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/slideme/sam/manager/model/utils/GifDecoder;->ih:I

    move/from16 v24, v0

    mul-int v17, v23, v24

    .line 410
    .local v17, npix:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/slideme/sam/manager/model/utils/GifDecoder;->pixels:[B

    move-object/from16 v23, v0

    if-eqz v23, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/slideme/sam/manager/model/utils/GifDecoder;->pixels:[B

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    move/from16 v1, v17

    if-ge v0, v1, :cond_1

    .line 411
    :cond_0
    move/from16 v0, v17

    new-array v0, v0, [B

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/slideme/sam/manager/model/utils/GifDecoder;->pixels:[B

    .line 413
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/slideme/sam/manager/model/utils/GifDecoder;->prefix:[S

    move-object/from16 v23, v0

    if-nez v23, :cond_2

    const/16 v23, 0x1000

    move/from16 v0, v23

    new-array v0, v0, [S

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/slideme/sam/manager/model/utils/GifDecoder;->prefix:[S

    .line 414
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/slideme/sam/manager/model/utils/GifDecoder;->suffix:[B

    move-object/from16 v23, v0

    if-nez v23, :cond_3

    const/16 v23, 0x1000

    move/from16 v0, v23

    new-array v0, v0, [B

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/slideme/sam/manager/model/utils/GifDecoder;->suffix:[B

    .line 415
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/slideme/sam/manager/model/utils/GifDecoder;->pixelStack:[B

    move-object/from16 v23, v0

    if-nez v23, :cond_4

    const/16 v23, 0x1001

    move/from16 v0, v23

    new-array v0, v0, [B

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/slideme/sam/manager/model/utils/GifDecoder;->pixelStack:[B

    .line 419
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/slideme/sam/manager/model/utils/GifDecoder;->read()I

    move-result v11

    .line 420
    .local v11, data_size:I
    const/16 v23, 0x1

    shl-int v6, v23, v11

    .line 421
    .local v6, clear:I
    add-int/lit8 v13, v6, 0x1

    .line 422
    .local v13, end_of_information:I
    add-int/lit8 v3, v6, 0x2

    .line 423
    .local v3, available:I
    move/from16 v18, v2

    .line 424
    .local v18, old_code:I
    add-int/lit8 v9, v11, 0x1

    .line 425
    .local v9, code_size:I
    const/16 v23, 0x1

    shl-int v23, v23, v9

    const/16 v24, 0x1

    sub-int v8, v23, v24

    .line 426
    .local v8, code_mask:I
    const/4 v7, 0x0

    .local v7, code:I
    :goto_0
    if-lt v7, v6, :cond_6

    .line 433
    const/4 v4, 0x0

    .local v4, bi:I
    move/from16 v19, v4

    .local v19, pi:I
    move/from16 v21, v4

    .local v21, top:I
    move v14, v4

    .local v14, first:I
    move v10, v4

    .local v10, count:I
    move v5, v4

    .local v5, bits:I
    move v12, v4

    .line 435
    .local v12, datum:I
    const/4 v15, 0x0

    .local v15, i:I
    move/from16 v20, v19

    .end local v19           #pi:I
    .local v20, pi:I
    move/from16 v22, v21

    .end local v21           #top:I
    .local v22, top:I
    :goto_1
    move v0, v15

    move/from16 v1, v17

    if-lt v0, v1, :cond_7

    :cond_5
    move/from16 v21, v22

    .line 511
    .end local v22           #top:I
    .restart local v21       #top:I
    :goto_2
    move/from16 v15, v20

    :goto_3
    move v0, v15

    move/from16 v1, v17

    if-lt v0, v1, :cond_12

    .line 515
    return-void

    .line 427
    .end local v4           #bi:I
    .end local v5           #bits:I
    .end local v10           #count:I
    .end local v12           #datum:I
    .end local v14           #first:I
    .end local v15           #i:I
    .end local v20           #pi:I
    .end local v21           #top:I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/slideme/sam/manager/model/utils/GifDecoder;->prefix:[S

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-short v24, v23, v7

    .line 428
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/slideme/sam/manager/model/utils/GifDecoder;->suffix:[B

    move-object/from16 v23, v0

    move v0, v7

    int-to-byte v0, v0

    move/from16 v24, v0

    aput-byte v24, v23, v7

    .line 426
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 436
    .restart local v4       #bi:I
    .restart local v5       #bits:I
    .restart local v10       #count:I
    .restart local v12       #datum:I
    .restart local v14       #first:I
    .restart local v15       #i:I
    .restart local v20       #pi:I
    .restart local v22       #top:I
    :cond_7
    if-nez v22, :cond_13

    .line 437
    if-ge v5, v9, :cond_a

    .line 439
    if-nez v10, :cond_9

    .line 441
    invoke-virtual/range {p0 .. p0}, Lcom/slideme/sam/manager/model/utils/GifDecoder;->readBlock()I

    move-result v10

    .line 442
    if-gtz v10, :cond_8

    move/from16 v21, v22

    .line 443
    .end local v22           #top:I
    .restart local v21       #top:I
    goto :goto_2

    .line 444
    .end local v21           #top:I
    .restart local v22       #top:I
    :cond_8
    const/4 v4, 0x0

    .line 446
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/slideme/sam/manager/model/utils/GifDecoder;->block:[B

    move-object/from16 v23, v0

    aget-byte v23, v23, v4

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0xff

    move/from16 v23, v0

    shl-int v23, v23, v5

    add-int v12, v12, v23

    .line 447
    add-int/lit8 v5, v5, 0x8

    .line 448
    add-int/lit8 v4, v4, 0x1

    .line 449
    add-int/lit8 v10, v10, -0x1

    .line 450
    goto :goto_1

    .line 455
    :cond_a
    and-int v7, v12, v8

    .line 456
    shr-int/2addr v12, v9

    .line 457
    sub-int/2addr v5, v9

    .line 461
    if-gt v7, v3, :cond_5

    if-ne v7, v13, :cond_b

    move/from16 v21, v22

    .line 462
    .end local v22           #top:I
    .restart local v21       #top:I
    goto :goto_2

    .line 463
    .end local v21           #top:I
    .restart local v22       #top:I
    :cond_b
    if-ne v7, v6, :cond_c

    .line 465
    add-int/lit8 v9, v11, 0x1

    .line 466
    const/16 v23, 0x1

    shl-int v23, v23, v9

    const/16 v24, 0x1

    sub-int v8, v23, v24

    .line 467
    add-int/lit8 v3, v6, 0x2

    .line 468
    move/from16 v18, v2

    .line 469
    goto :goto_1

    .line 471
    :cond_c
    move/from16 v0, v18

    move v1, v2

    if-ne v0, v1, :cond_d

    .line 472
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/slideme/sam/manager/model/utils/GifDecoder;->pixelStack:[B

    move-object/from16 v23, v0

    add-int/lit8 v21, v22, 0x1

    .end local v22           #top:I
    .restart local v21       #top:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/slideme/sam/manager/model/utils/GifDecoder;->suffix:[B

    move-object/from16 v24, v0

    aget-byte v24, v24, v7

    aput-byte v24, v23, v22

    .line 473
    move/from16 v18, v7

    .line 474
    move v14, v7

    move/from16 v22, v21

    .line 475
    .end local v21           #top:I
    .restart local v22       #top:I
    goto/16 :goto_1

    .line 477
    :cond_d
    move/from16 v16, v7

    .line 478
    .local v16, in_code:I
    if-ne v7, v3, :cond_e

    .line 479
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/slideme/sam/manager/model/utils/GifDecoder;->pixelStack:[B

    move-object/from16 v23, v0

    add-int/lit8 v21, v22, 0x1

    .end local v22           #top:I
    .restart local v21       #top:I
    move v0, v14

    int-to-byte v0, v0

    move/from16 v24, v0

    aput-byte v24, v23, v22

    .line 480
    move/from16 v7, v18

    move/from16 v22, v21

    .line 482
    .end local v21           #top:I
    .restart local v22       #top:I
    :cond_e
    :goto_4
    if-gt v7, v6, :cond_f

    .line 486
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/slideme/sam/manager/model/utils/GifDecoder;->suffix:[B

    move-object/from16 v23, v0

    aget-byte v23, v23, v7

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0xff

    move v14, v0

    .line 490
    const/16 v23, 0x1000

    move v0, v3

    move/from16 v1, v23

    if-lt v0, v1, :cond_10

    move/from16 v21, v22

    .line 491
    .end local v22           #top:I
    .restart local v21       #top:I
    goto/16 :goto_2

    .line 483
    .end local v21           #top:I
    .restart local v22       #top:I
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/slideme/sam/manager/model/utils/GifDecoder;->pixelStack:[B

    move-object/from16 v23, v0

    add-int/lit8 v21, v22, 0x1

    .end local v22           #top:I
    .restart local v21       #top:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/slideme/sam/manager/model/utils/GifDecoder;->suffix:[B

    move-object/from16 v24, v0

    aget-byte v24, v24, v7

    aput-byte v24, v23, v22

    .line 484
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/slideme/sam/manager/model/utils/GifDecoder;->prefix:[S

    move-object/from16 v23, v0

    aget-short v7, v23, v7

    move/from16 v22, v21

    .end local v21           #top:I
    .restart local v22       #top:I
    goto :goto_4

    .line 492
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/slideme/sam/manager/model/utils/GifDecoder;->pixelStack:[B

    move-object/from16 v23, v0

    add-int/lit8 v21, v22, 0x1

    .end local v22           #top:I
    .restart local v21       #top:I
    move v0, v14

    int-to-byte v0, v0

    move/from16 v24, v0

    aput-byte v24, v23, v22

    .line 493
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/slideme/sam/manager/model/utils/GifDecoder;->prefix:[S

    move-object/from16 v23, v0

    move/from16 v0, v18

    int-to-short v0, v0

    move/from16 v24, v0

    aput-short v24, v23, v3

    .line 494
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/slideme/sam/manager/model/utils/GifDecoder;->suffix:[B

    move-object/from16 v23, v0

    move v0, v14

    int-to-byte v0, v0

    move/from16 v24, v0

    aput-byte v24, v23, v3

    .line 495
    add-int/lit8 v3, v3, 0x1

    .line 496
    and-int v23, v3, v8

    if-nez v23, :cond_11

    .line 497
    const/16 v23, 0x1000

    move v0, v3

    move/from16 v1, v23

    if-ge v0, v1, :cond_11

    .line 498
    add-int/lit8 v9, v9, 0x1

    .line 499
    add-int/2addr v8, v3

    .line 501
    :cond_11
    move/from16 v18, v16

    .line 506
    .end local v16           #in_code:I
    :goto_5
    add-int/lit8 v21, v21, -0x1

    .line 507
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/slideme/sam/manager/model/utils/GifDecoder;->pixels:[B

    move-object/from16 v23, v0

    add-int/lit8 v19, v20, 0x1

    .end local v20           #pi:I
    .restart local v19       #pi:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/slideme/sam/manager/model/utils/GifDecoder;->pixelStack:[B

    move-object/from16 v24, v0

    aget-byte v24, v24, v21

    aput-byte v24, v23, v20

    .line 508
    add-int/lit8 v15, v15, 0x1

    move/from16 v20, v19

    .end local v19           #pi:I
    .restart local v20       #pi:I
    move/from16 v22, v21

    .end local v21           #top:I
    .restart local v22       #top:I
    goto/16 :goto_1

    .line 512
    .end local v22           #top:I
    .restart local v21       #top:I
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/slideme/sam/manager/model/utils/GifDecoder;->pixels:[B

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-byte v24, v23, v15

    .line 511
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_3

    .end local v21           #top:I
    .restart local v22       #top:I
    :cond_13
    move/from16 v21, v22

    .end local v22           #top:I
    .restart local v21       #top:I
    goto :goto_5
.end method

.method protected err()Z
    .locals 1

    .prologue
    .line 521
    iget v0, p0, Lcom/slideme/sam/manager/model/utils/GifDecoder;->status:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDelay(I)I
    .locals 1
    .parameter "n"

    .prologue
    .line 122
    const/4 v0, -0x1

    iput v0, p0, Lcom/slideme/sam/manager/model/utils/GifDecoder;->delay:I

    .line 123
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/slideme/sam/manager/model/utils/GifDecoder;->frameCount:I

    if-ge p1, v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/slideme/sam/manager/model/utils/GifDecoder;->frames:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/slideme/sam/manager/model/utils/GifDecoder$GifFrame;

    iget v0, v0, Lcom/slideme/sam/manager/model/utils/GifDecoder$GifFrame;->delay:I

    iput v0, p0, Lcom/slideme/sam/manager/model/utils/GifDecoder;->delay:I

    .line 126
    :cond_0
    iget v0, p0, Lcom/slideme/sam/manager/model/utils/GifDecoder;->delay:I

    return v0
.end method

.method public getFrame(I)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "n"

    .prologue
    .line 280
    const/4 v0, 0x0

    .line 281
    .local v0, tmp:Landroid/graphics/Bitmap;
    if-ltz p1, :cond_0

    iget v1, p0, Lcom/slideme/sam/manager/model/utils/GifDecoder;->frameCount:I

    if-ge p1, v1, :cond_0

    .line 282
    iget-object v1, p0, Lcom/slideme/sam/manager/model/utils/GifDecoder;->frames:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/slideme/sam/manager/model/utils/GifDecoder$GifFrame;

    iget-object v0, p0, Lcom/slideme/sam/manager/model/utils/GifDecoder$GifFrame;->image:Landroid/graphics/Bitmap;

    .line 284
    :cond_0
    return-object v0
.end method

.method public getFrameCount()I
    .locals 1

    .prologue
    .line 135
    iget v0, p0, Lcom/slideme/sam/manager/model/utils/GifDecoder;->frameCount:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 300
    iget v0, p0, Lcom/slideme/sam/manager/model/utils/GifDecoder;->height:I

    return v0
.end method

.method public getImage()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 144
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/slideme/sam/manager/model/utils/GifDecoder;->getFrame(I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getLoopCount()I
    .locals 1

    .prologue
    .line 154
    iget v0, p0, Lcom/slideme/sam/manager/model/utils/GifDecoder;->loopCount:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 296
    iget v0, p0, Lcom/slideme/sam/manager/model/utils/GifDecoder;->width:I

    return v0
.end method

.method protected init()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 528
    iput v0, p0, Lcom/slideme/sam/manager/model/utils/GifDecoder;->status:I

    .line 529
    iput v0, p0, Lcom/slideme/sam/manager/model/utils/GifDecoder;->frameCount:I

    .line 530
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/slideme/sam/manager/model/utils/GifDecoder;->frames:Ljava/util/ArrayList;

    .line 531
    iput-object v1, p0, Lcom/slideme/sam/manager/model/utils/GifDecoder;->gct:[I

    .line 532
    iput-object v1, p0, Lcom/slideme/sam/manager/model/utils/GifDecoder;->lct:[I

    .line 533
    return-void
.end method

.method protected read()I
    .locals 3

    .prologue
    .line 539
    const/4 v0, 0x0

    .line 541
    .local v0, curByte:I
    :try_start_0
    iget-object v2, p0, Lcom/slideme/sam/manager/model/utils/GifDecoder;->in:Ljava/io/BufferedInputStream;

    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->read()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 545
    :goto_0
    return v0

    .line 542
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 543
    .local v1, e:Ljava/io/IOException;
    const/4 v2, 0x1

    iput v2, p0, Lcom/slideme/sam/manager/model/utils/GifDecoder;->status:I

    goto :goto_0
.end method

.method public read(Ljava/io/BufferedInputStream;)I
    .locals 1
    .parameter "is"

    .prologue
    .line 310
    invoke-virtual {p0}, Lcom/slideme/sam/manager/model/utils/GifDecoder;->init()V

    .line 311
    if-eqz p1, :cond_1

    .line 312
    iput-object p1, p0, Lcom/slideme/sam/manager/model/utils/GifDecoder;->in:Ljava/io/BufferedInputStream;

    .line 313
    invoke-virtual {p0}, Lcom/slideme/sam/manager/model/utils/GifDecoder;->readHeader()V

    .line 314
    invoke-virtual {p0}, Lcom/slideme/sam/manager/model/utils/GifDecoder;->err()Z

    move-result v0

    if-nez v0, :cond_0

    .line 315
    invoke-virtual {p0}, Lcom/slideme/sam/manager/model/utils/GifDecoder;->readContents()V

    .line 316
    iget v0, p0, Lcom/slideme/sam/manager/model/utils/GifDecoder;->frameCount:I

    if-gez v0, :cond_0

    .line 317
    const/4 v0, 0x1

    iput v0, p0, Lcom/slideme/sam/manager/model/utils/GifDecoder;->status:I

    .line 324
    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 327
    :goto_1
    iget v0, p0, Lcom/slideme/sam/manager/model/utils/GifDecoder;->status:I

    return v0

    .line 321
    :cond_1
    const/4 v0, 0x2

    iput v0, p0, Lcom/slideme/sam/manager/model/utils/GifDecoder;->status:I

    goto :goto_0

    .line 325
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public read(Ljava/io/InputStream;)I
    .locals 3
    .parameter "is"

    .prologue
    .line 337
    invoke-virtual {p0}, Lcom/slideme/sam/manager/model/utils/GifDecoder;->init()V

    .line 338
    if-eqz p1, :cond_2

    .line 339
    instance-of v2, p1, Ljava/io/BufferedInputStream;

    if-nez v2, :cond_0

    .line 340
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .end local p1
    .local v1, is:Ljava/io/InputStream;
    move-object p1, v1

    .line 341
    .end local v1           #is:Ljava/io/InputStream;
    .restart local p1
    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/io/BufferedInputStream;

    move-object v2, v0

    iput-object v2, p0, Lcom/slideme/sam/manager/model/utils/GifDecoder;->in:Ljava/io/BufferedInputStream;

    .line 342
    invoke-virtual {p0}, Lcom/slideme/sam/manager/model/utils/GifDecoder;->readHeader()V

    .line 343
    invoke-virtual {p0}, Lcom/slideme/sam/manager/model/utils/GifDecoder;->err()Z

    move-result v2

    if-nez v2, :cond_1

    .line 344
    invoke-virtual {p0}, Lcom/slideme/sam/manager/model/utils/GifDecoder;->readContents()V

    .line 345
    iget v2, p0, Lcom/slideme/sam/manager/model/utils/GifDecoder;->frameCount:I

    if-gez v2, :cond_1

    .line 346
    const/4 v2, 0x1

    iput v2, p0, Lcom/slideme/sam/manager/model/utils/GifDecoder;->status:I

    .line 353
    :cond_1
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 356
    :goto_1
    iget v2, p0, Lcom/slideme/sam/manager/model/utils/GifDecoder;->status:I

    return v2

    .line 350
    :cond_2
    const/4 v2, 0x2

    iput v2, p0, Lcom/slideme/sam/manager/model/utils/GifDecoder;->status:I

    goto :goto_0

    .line 354
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public read(Ljava/lang/String;)I
    .locals 4
    .parameter "name"

    .prologue
    .line 367
    const/4 v2, 0x0

    iput v2, p0, Lcom/slideme/sam/manager/model/utils/GifDecoder;->status:I

    .line 369
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 370
    const-string v2, "file:"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_0

    .line 371
    const-string v2, ":/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_1

    .line 372
    :cond_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 373
    .local v1, url:Ljava/net/URL;
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-virtual {v1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v2, p0, Lcom/slideme/sam/manager/model/utils/GifDecoder;->in:Ljava/io/BufferedInputStream;

    .line 377
    .end local v1           #url:Ljava/net/URL;
    :goto_0
    iget-object v2, p0, Lcom/slideme/sam/manager/model/utils/GifDecoder;->in:Ljava/io/BufferedInputStream;

    invoke-virtual {p0, v2}, Lcom/slideme/sam/manager/model/utils/GifDecoder;->read(Ljava/io/BufferedInputStream;)I

    move-result v2

    iput v2, p0, Lcom/slideme/sam/manager/model/utils/GifDecoder;->status:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 382
    :goto_1
    iget v2, p0, Lcom/slideme/sam/manager/model/utils/GifDecoder;->status:I

    return v2

    .line 375
    :cond_1
    :try_start_1
    new-instance v2, Ljava/io/BufferedInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v2, p0, Lcom/slideme/sam/manager/model/utils/GifDecoder;->in:Ljava/io/BufferedInputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 378
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 379
    .local v0, e:Ljava/io/IOException;
    const/4 v2, 0x2

    iput v2, p0, Lcom/slideme/sam/manager/model/utils/GifDecoder;->status:I

    goto :goto_1
.end method

.method protected readBlock()I
    .locals 5

    .prologue
    .line 554
    invoke-virtual {p0}, Lcom/slideme/sam/manager/model/utils/GifDecoder;->read()I

    move-result v2

    iput v2, p0, Lcom/slideme/sam/manager/model/utils/GifDecoder;->blockSize:I

    .line 555
    const/4 v1, 0x0

    .line 556
    .local v1, n:I
    iget v2, p0, Lcom/slideme/sam/manager/model/utils/GifDecoder;->blockSize:I

    if-lez v2, :cond_1

    .line 558
    const/4 v0, 0x0

    .line 559
    .local v0, count:I
    :goto_0
    :try_start_0
    iget v2, p0, Lcom/slideme/sam/manager/model/utils/GifDecoder;->blockSize:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-lt v1, v2, :cond_2

    .line 568
    :cond_0
    :goto_1
    iget v2, p0, Lcom/slideme/sam/manager/model/utils/GifDecoder;->blockSize:I

    if-ge v1, v2, :cond_1

    .line 569
    const/4 v2, 0x1

    iput v2, p0, Lcom/slideme/sam/manager/model/utils/GifDecoder;->status:I

    .line 572
    .end local v0           #count:I
    :cond_1
    return v1

    .line 560
    .restart local v0       #count:I
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/slideme/sam/manager/model/utils/GifDecoder;->in:Ljava/io/BufferedInputStream;

    iget-object v3, p0, Lcom/slideme/sam/manager/model/utils/GifDecoder;->block:[B

    iget v4, p0, Lcom/slideme/sam/manager/model/utils/GifDecoder;->blockSize:I

    sub-int/2addr v4, v1

    invoke-virtual {v2, v3, v1, v4}, Ljava/io/BufferedInputStream;->read([BII)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    .line 561
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 563
    add-int/2addr v1, v0

    goto :goto_0

    .line 565
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method protected readColorTable(I)[I
    .locals 13
    .parameter "ncolors"

    .prologue
    .line 582
    mul-int/lit8 v8, p1, 0x3

    .line 583
    .local v8, nbytes:I
    const/4 v10, 0x0

    check-cast v10, [I

    .line 584
    .local v10, tab:[I
    new-array v1, v8, [B

    .line 585
    .local v1, c:[B
    const/4 v7, 0x0

    .line 587
    .local v7, n:I
    :try_start_0
    iget-object v11, p0, Lcom/slideme/sam/manager/model/utils/GifDecoder;->in:Ljava/io/BufferedInputStream;

    invoke-virtual {v11, v1}, Ljava/io/BufferedInputStream;->read([B)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 590
    :goto_0
    if-ge v7, v8, :cond_1

    .line 591
    const/4 v11, 0x1

    iput v11, p0, Lcom/slideme/sam/manager/model/utils/GifDecoder;->status:I

    .line 603
    :cond_0
    return-object v10

    .line 593
    :cond_1
    const/16 v11, 0x100

    new-array v10, v11, [I

    .line 594
    const/4 v3, 0x0

    .line 595
    .local v3, i:I
    const/4 v5, 0x0

    .local v5, j:I
    move v6, v5

    .end local v5           #j:I
    .local v6, j:I
    move v4, v3

    .line 596
    .end local v3           #i:I
    .local v4, i:I
    :goto_1
    if-ge v4, p1, :cond_0

    .line 597
    add-int/lit8 v5, v6, 0x1

    .end local v6           #j:I
    .restart local v5       #j:I
    aget-byte v11, v1, v6

    and-int/lit16 v9, v11, 0xff

    .line 598
    .local v9, r:I
    add-int/lit8 v6, v5, 0x1

    .end local v5           #j:I
    .restart local v6       #j:I
    aget-byte v11, v1, v5

    and-int/lit16 v2, v11, 0xff

    .line 599
    .local v2, g:I
    add-int/lit8 v5, v6, 0x1

    .end local v6           #j:I
    .restart local v5       #j:I
    aget-byte v11, v1, v6

    and-int/lit16 v0, v11, 0xff

    .line 600
    .local v0, b:I
    add-int/lit8 v3, v4, 0x1

    .end local v4           #i:I
    .restart local v3       #i:I
    const/high16 v11, -0x100

    shl-int/lit8 v12, v9, 0x10

    or-int/2addr v11, v12

    shl-int/lit8 v12, v2, 0x8

    or-int/2addr v11, v12

    or-int/2addr v11, v0

    aput v11, v10, v4

    move v6, v5

    .end local v5           #j:I
    .restart local v6       #j:I
    move v4, v3

    .end local v3           #i:I
    .restart local v4       #i:I
    goto :goto_1

    .line 588
    .end local v0           #b:I
    .end local v2           #g:I
    .end local v4           #i:I
    .end local v6           #j:I
    .end local v9           #r:I
    :catch_0
    move-exception v11

    goto :goto_0
.end method

.method protected readContents()V
    .locals 6

    .prologue
    .line 611
    const/4 v2, 0x0

    .line 612
    .local v2, done:Z
    :goto_0
    :sswitch_0
    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/slideme/sam/manager/model/utils/GifDecoder;->err()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 655
    :cond_0
    return-void

    .line 613
    :cond_1
    invoke-virtual {p0}, Lcom/slideme/sam/manager/model/utils/GifDecoder;->read()I

    move-result v1

    .line 614
    .local v1, code:I
    sparse-switch v1, :sswitch_data_0

    .line 652
    const/4 v4, 0x1

    iput v4, p0, Lcom/slideme/sam/manager/model/utils/GifDecoder;->status:I

    goto :goto_0

    .line 617
    :sswitch_1
    invoke-virtual {p0}, Lcom/slideme/sam/manager/model/utils/GifDecoder;->readImage()V

    goto :goto_0

    .line 621
    :sswitch_2
    invoke-virtual {p0}, Lcom/slideme/sam/manager/model/utils/GifDecoder;->read()I

    move-result v1

    .line 622
    sparse-switch v1, :sswitch_data_1

    .line 640
    invoke-virtual {p0}, Lcom/slideme/sam/manager/model/utils/GifDecoder;->skip()V

    goto :goto_0

    .line 624
    :sswitch_3
    invoke-virtual {p0}, Lcom/slideme/sam/manager/model/utils/GifDecoder;->readGraphicControlExt()V

    goto :goto_0

    .line 628
    :sswitch_4
    invoke-virtual {p0}, Lcom/slideme/sam/manager/model/utils/GifDecoder;->readBlock()I

    .line 629
    const-string v0, ""

    .line 630
    .local v0, app:Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    const/16 v4, 0xb

    if-lt v3, v4, :cond_2

    .line 633
    const-string v4, "NETSCAPE2.0"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 634
    invoke-virtual {p0}, Lcom/slideme/sam/manager/model/utils/GifDecoder;->readNetscapeExt()V

    goto :goto_0

    .line 631
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/slideme/sam/manager/model/utils/GifDecoder;->block:[B

    aget-byte v5, v5, v3

    int-to-char v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 630
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 636
    :cond_3
    invoke-virtual {p0}, Lcom/slideme/sam/manager/model/utils/GifDecoder;->skip()V

    goto :goto_0

    .line 645
    .end local v0           #app:Ljava/lang/String;
    .end local v3           #i:I
    :sswitch_5
    const/4 v2, 0x1

    .line 646
    goto :goto_0

    .line 614
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x21 -> :sswitch_2
        0x2c -> :sswitch_1
        0x3b -> :sswitch_5
    .end sparse-switch

    .line 622
    :sswitch_data_1
    .sparse-switch
        0xf9 -> :sswitch_3
        0xff -> :sswitch_4
    .end sparse-switch
.end method

.method protected readGraphicControlExt()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 661
    invoke-virtual {p0}, Lcom/slideme/sam/manager/model/utils/GifDecoder;->read()I

    .line 662
    invoke-virtual {p0}, Lcom/slideme/sam/manager/model/utils/GifDecoder;->read()I

    move-result v0

    .line 663
    .local v0, packed:I
    and-int/lit8 v1, v0, 0x1c

    shr-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/slideme/sam/manager/model/utils/GifDecoder;->dispose:I

    .line 664
    iget v1, p0, Lcom/slideme/sam/manager/model/utils/GifDecoder;->dispose:I

    if-nez v1, :cond_0

    .line 665
    iput v2, p0, Lcom/slideme/sam/manager/model/utils/GifDecoder;->dispose:I

    .line 667
    :cond_0
    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/slideme/sam/manager/model/utils/GifDecoder;->transparency:Z

    .line 668
    invoke-virtual {p0}, Lcom/slideme/sam/manager/model/utils/GifDecoder;->readShort()I

    move-result v1

    mul-int/lit8 v1, v1, 0xa

    iput v1, p0, Lcom/slideme/sam/manager/model/utils/GifDecoder;->delay:I

    .line 669
    invoke-virtual {p0}, Lcom/slideme/sam/manager/model/utils/GifDecoder;->read()I

    move-result v1

    iput v1, p0, Lcom/slideme/sam/manager/model/utils/GifDecoder;->transIndex:I

    .line 670
    invoke-virtual {p0}, Lcom/slideme/sam/manager/model/utils/GifDecoder;->read()I

    .line 671
    return-void

    .line 667
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected readHeader()V
    .locals 4

    .prologue
    .line 677
    const-string v1, ""

    .line 678
    .local v1, id:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v2, 0x6

    if-lt v0, v2, :cond_1

    .line 681
    const-string v2, "GIF"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 682
    const/4 v2, 0x1

    iput v2, p0, Lcom/slideme/sam/manager/model/utils/GifDecoder;->status:I

    .line 690
    :cond_0
    :goto_1
    return-void

    .line 679
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/slideme/sam/manager/model/utils/GifDecoder;->read()I

    move-result v3

    int-to-char v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 678
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 685
    :cond_2
    invoke-virtual {p0}, Lcom/slideme/sam/manager/model/utils/GifDecoder;->readLSD()V

    .line 686
    iget-boolean v2, p0, Lcom/slideme/sam/manager/model/utils/GifDecoder;->gctFlag:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/slideme/sam/manager/model/utils/GifDecoder;->err()Z

    move-result v2

    if-nez v2, :cond_0

    .line 687
    iget v2, p0, Lcom/slideme/sam/manager/model/utils/GifDecoder;->gctSize:I

    invoke-virtual {p0, v2}, Lcom/slideme/sam/manager/model/utils/GifDecoder;->readColorTable(I)[I

    move-result-object v2

    iput-object v2, p0, Lcom/slideme/sam/manager/model/utils/GifDecoder;->gct:[I

    .line 688
    iget-object v2, p0, Lcom/slideme/sam/manager/model/utils/GifDecoder;->gct:[I

    iget v3, p0, Lcom/slideme/sam/manager/model/utils/GifDecoder;->bgIndex:I

    aget v2, v2, v3

    iput v2, p0, Lcom/slideme/sam/manager/model/utils/GifDecoder;->bgColor:I

    goto :goto_1
.end method

.method protected readImage()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 696
    invoke-virtual {p0}, Lcom/slideme/sam/manager/model/utils/GifDecoder;->readShort()I

    move-result v2

    iput v2, p0, Lcom/slideme/sam/manager/model/utils/GifDecoder;->ix:I

    .line 697
    invoke-virtual {p0}, Lcom/slideme/sam/manager/model/utils/GifDecoder;->readShort()I

    move-result v2

    iput v2, p0, Lcom/slideme/sam/manager/model/utils/GifDecoder;->iy:I

    .line 698
    invoke-virtual {p0}, Lcom/slideme/sam/manager/model/utils/GifDecoder;->readShort()I

    move-result v2

    iput v2, p0, Lcom/slideme/sam/manager/model/utils/GifDecoder;->iw:I

    .line 699
    invoke-virtual {p0}, Lcom/slideme/sam/manager/model/utils/GifDecoder;->readShort()I

    move-result v2

    iput v2, p0, Lcom/slideme/sam/manager/model/utils/GifDecoder;->ih:I

    .line 701
    invoke-virtual {p0}, Lcom/slideme/sam/manager/model/utils/GifDecoder;->read()I

    move-result v0

    .line 702
    .local v0, packed:I
    and-int/lit16 v2, v0, 0x80

    if-eqz v2, :cond_4

    move v2, v5

    :goto_0
    iput-boolean v2, p0, Lcom/slideme/sam/manager/model/utils/GifDecoder;->lctFlag:Z

    .line 703
    and-int/lit8 v2, v0, 0x40

    if-eqz v2, :cond_5

    move v2, v5

    :goto_1
    iput-boolean v2, p0, Lcom/slideme/sam/manager/model/utils/GifDecoder;->interlace:Z

    .line 706
    const/4 v2, 0x2

    and-int/lit8 v3, v0, 0x7

    shl-int/2addr v2, v3

    iput v2, p0, Lcom/slideme/sam/manager/model/utils/GifDecoder;->lctSize:I

    .line 708
    iget-boolean v2, p0, Lcom/slideme/sam/manager/model/utils/GifDecoder;->lctFlag:Z

    if-eqz v2, :cond_6

    .line 709
    iget v2, p0, Lcom/slideme/sam/manager/model/utils/GifDecoder;->lctSize:I

    invoke-virtual {p0, v2}, Lcom/slideme/sam/manager/model/utils/GifDecoder;->readColorTable(I)[I

    move-result-object v2

    iput-object v2, p0, Lcom/slideme/sam/manager/model/utils/GifDecoder;->lct:[I

    .line 710
    iget-object v2, p0, Lcom/slideme/sam/manager/model/utils/GifDecoder;->lct:[I

    iput-object v2, p0, Lcom/slideme/sam/manager/model/utils/GifDecoder;->act:[I

    .line 716
    :cond_0
    :goto_2
    const/4 v1, 0x0

    .line 717
    .local v1, save:I
    iget-boolean v2, p0, Lcom/slideme/sam/manager/model/utils/GifDecoder;->transparency:Z

    if-eqz v2, :cond_1

    .line 718
    iget-object v2, p0, Lcom/slideme/sam/manager/model/utils/GifDecoder;->act:[I

    iget v3, p0, Lcom/slideme/sam/manager/model/utils/GifDecoder;->transIndex:I

    aget v1, v2, v3

    .line 719
    iget-object v2, p0, Lcom/slideme/sam/manager/model/utils/GifDecoder;->act:[I

    iget v3, p0, Lcom/slideme/sam/manager/model/utils/GifDecoder;->transIndex:I

    aput v4, v2, v3

    .line 722
    :cond_1
    iget-object v2, p0, Lcom/slideme/sam/manager/model/utils/GifDecoder;->act:[I

    if-nez v2, :cond_2

    .line 723
    iput v5, p0, Lcom/slideme/sam/manager/model/utils/GifDecoder;->status:I

    .line 726
    :cond_2
    invoke-virtual {p0}, Lcom/slideme/sam/manager/model/utils/GifDecoder;->err()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 748
    :cond_3
    :goto_3
    return-void

    .end local v1           #save:I
    :cond_4
    move v2, v4

    .line 702
    goto :goto_0

    :cond_5
    move v2, v4

    .line 703
    goto :goto_1

    .line 712
    :cond_6
    iget-object v2, p0, Lcom/slideme/sam/manager/model/utils/GifDecoder;->gct:[I

    iput-object v2, p0, Lcom/slideme/sam/manager/model/utils/GifDecoder;->act:[I

    .line 713
    iget v2, p0, Lcom/slideme/sam/manager/model/utils/GifDecoder;->bgIndex:I

    iget v3, p0, Lcom/slideme/sam/manager/model/utils/GifDecoder;->transIndex:I

    if-ne v2, v3, :cond_0

    .line 714
    iput v4, p0, Lcom/slideme/sam/manager/model/utils/GifDecoder;->bgColor:I

    goto :goto_2

    .line 728
    .restart local v1       #save:I
    :cond_7
    invoke-virtual {p0}, Lcom/slideme/sam/manager/model/utils/GifDecoder;->decodeImageData()V

    .line 729
    invoke-virtual {p0}, Lcom/slideme/sam/manager/model/utils/GifDecoder;->skip()V

    .line 731
    invoke-virtual {p0}, Lcom/slideme/sam/manager/model/utils/GifDecoder;->err()Z

    move-result v2

    if-nez v2, :cond_3

    .line 733
    iget v2, p0, Lcom/slideme/sam/manager/model/utils/GifDecoder;->frameCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/slideme/sam/manager/model/utils/GifDecoder;->frameCount:I

    .line 736
    iget v2, p0, Lcom/slideme/sam/manager/model/utils/GifDecoder;->width:I

    iget v3, p0, Lcom/slideme/sam/manager/model/utils/GifDecoder;->height:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/slideme/sam/manager/model/utils/GifDecoder;->image:Landroid/graphics/Bitmap;

    .line 739
    invoke-virtual {p0}, Lcom/slideme/sam/manager/model/utils/GifDecoder;->setPixels()V

    .line 741
    iget-object v2, p0, Lcom/slideme/sam/manager/model/utils/GifDecoder;->frames:Ljava/util/ArrayList;

    new-instance v3, Lcom/slideme/sam/manager/model/utils/GifDecoder$GifFrame;

    iget-object v4, p0, Lcom/slideme/sam/manager/model/utils/GifDecoder;->image:Landroid/graphics/Bitmap;

    iget v5, p0, Lcom/slideme/sam/manager/model/utils/GifDecoder;->delay:I

    invoke-direct {v3, v4, v5}, Lcom/slideme/sam/manager/model/utils/GifDecoder$GifFrame;-><init>(Landroid/graphics/Bitmap;I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 743
    iget-boolean v2, p0, Lcom/slideme/sam/manager/model/utils/GifDecoder;->transparency:Z

    if-eqz v2, :cond_8

    .line 744
    iget-object v2, p0, Lcom/slideme/sam/manager/model/utils/GifDecoder;->act:[I

    iget v3, p0, Lcom/slideme/sam/manager/model/utils/GifDecoder;->transIndex:I

    aput v1, v2, v3

    .line 746
    :cond_8
    invoke-virtual {p0}, Lcom/slideme/sam/manager/model/utils/GifDecoder;->resetFrame()V

    goto :goto_3
.end method

.method protected readLSD()V
    .locals 3

    .prologue
    .line 756
    invoke-virtual {p0}, Lcom/slideme/sam/manager/model/utils/GifDecoder;->readShort()I

    move-result v1

    iput v1, p0, Lcom/slideme/sam/manager/model/utils/GifDecoder;->width:I

    .line 757
    invoke-virtual {p0}, Lcom/slideme/sam/manager/model/utils/GifDecoder;->readShort()I

    move-result v1

    iput v1, p0, Lcom/slideme/sam/manager/model/utils/GifDecoder;->height:I

    .line 760
    invoke-virtual {p0}, Lcom/slideme/sam/manager/model/utils/GifDecoder;->read()I

    move-result v0

    .line 761
    .local v0, packed:I
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/slideme/sam/manager/model/utils/GifDecoder;->gctFlag:Z

    .line 764
    const/4 v1, 0x2

    and-int/lit8 v2, v0, 0x7

    shl-int/2addr v1, v2

    iput v1, p0, Lcom/slideme/sam/manager/model/utils/GifDecoder;->gctSize:I

    .line 766
    invoke-virtual {p0}, Lcom/slideme/sam/manager/model/utils/GifDecoder;->read()I

    move-result v1

    iput v1, p0, Lcom/slideme/sam/manager/model/utils/GifDecoder;->bgIndex:I

    .line 767
    invoke-virtual {p0}, Lcom/slideme/sam/manager/model/utils/GifDecoder;->read()I

    move-result v1

    iput v1, p0, Lcom/slideme/sam/manager/model/utils/GifDecoder;->pixelAspect:I

    .line 768
    return-void

    .line 761
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected readNetscapeExt()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 775
    :cond_0
    invoke-virtual {p0}, Lcom/slideme/sam/manager/model/utils/GifDecoder;->readBlock()I

    .line 776
    iget-object v2, p0, Lcom/slideme/sam/manager/model/utils/GifDecoder;->block:[B

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    if-ne v2, v4, :cond_1

    .line 778
    iget-object v2, p0, Lcom/slideme/sam/manager/model/utils/GifDecoder;->block:[B

    aget-byte v2, v2, v4

    and-int/lit16 v0, v2, 0xff

    .line 779
    .local v0, b1:I
    iget-object v2, p0, Lcom/slideme/sam/manager/model/utils/GifDecoder;->block:[B

    const/4 v3, 0x2

    aget-byte v2, v2, v3

    and-int/lit16 v1, v2, 0xff

    .line 780
    .local v1, b2:I
    shl-int/lit8 v2, v1, 0x8

    or-int/2addr v2, v0

    iput v2, p0, Lcom/slideme/sam/manager/model/utils/GifDecoder;->loopCount:I

    .line 782
    .end local v0           #b1:I
    .end local v1           #b2:I
    :cond_1
    iget v2, p0, Lcom/slideme/sam/manager/model/utils/GifDecoder;->blockSize:I

    if-lez v2, :cond_2

    invoke-virtual {p0}, Lcom/slideme/sam/manager/model/utils/GifDecoder;->err()Z

    move-result v2

    .line 774
    if-eqz v2, :cond_0

    .line 783
    :cond_2
    return-void
.end method

.method protected readShort()I
    .locals 2

    .prologue
    .line 790
    invoke-virtual {p0}, Lcom/slideme/sam/manager/model/utils/GifDecoder;->read()I

    move-result v0

    invoke-virtual {p0}, Lcom/slideme/sam/manager/model/utils/GifDecoder;->read()I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    return v0
.end method

.method protected resetFrame()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 797
    iget v0, p0, Lcom/slideme/sam/manager/model/utils/GifDecoder;->dispose:I

    iput v0, p0, Lcom/slideme/sam/manager/model/utils/GifDecoder;->lastDispose:I

    .line 798
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/slideme/sam/manager/model/utils/GifDecoder;->ix:I

    iget v2, p0, Lcom/slideme/sam/manager/model/utils/GifDecoder;->iy:I

    iget v3, p0, Lcom/slideme/sam/manager/model/utils/GifDecoder;->ix:I

    iget v4, p0, Lcom/slideme/sam/manager/model/utils/GifDecoder;->iw:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/slideme/sam/manager/model/utils/GifDecoder;->iy:I

    iget v5, p0, Lcom/slideme/sam/manager/model/utils/GifDecoder;->ih:I

    add-int/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/slideme/sam/manager/model/utils/GifDecoder;->lastRect:Landroid/graphics/Rect;

    .line 799
    iget-object v0, p0, Lcom/slideme/sam/manager/model/utils/GifDecoder;->image:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/slideme/sam/manager/model/utils/GifDecoder;->lastImage:Landroid/graphics/Bitmap;

    .line 800
    iget v0, p0, Lcom/slideme/sam/manager/model/utils/GifDecoder;->bgColor:I

    iput v0, p0, Lcom/slideme/sam/manager/model/utils/GifDecoder;->lastBgColor:I

    .line 801
    iput v6, p0, Lcom/slideme/sam/manager/model/utils/GifDecoder;->dispose:I

    .line 802
    iput-boolean v6, p0, Lcom/slideme/sam/manager/model/utils/GifDecoder;->transparency:Z

    .line 803
    iput v6, p0, Lcom/slideme/sam/manager/model/utils/GifDecoder;->delay:I

    .line 804
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/slideme/sam/manager/model/utils/GifDecoder;->lct:[I

    .line 805
    return-void
.end method

.method protected setPixels()V
    .locals 26

    .prologue
    .line 174
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/slideme/sam/manager/model/utils/GifDecoder;->image:Landroid/graphics/Bitmap;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/slideme/sam/manager/model/utils/GifDecoder;->copyPixelToSetInteger(Landroid/graphics/Bitmap;)[I

    move-result-object v7

    .line 178
    .local v7, dest:[I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/slideme/sam/manager/model/utils/GifDecoder;->lastDispose:I

    move/from16 v22, v0

    if-lez v22, :cond_1

    .line 179
    move-object/from16 v0, p0

    iget v0, v0, Lcom/slideme/sam/manager/model/utils/GifDecoder;->lastDispose:I

    move/from16 v22, v0

    const/16 v23, 0x3

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_0

    .line 181
    move-object/from16 v0, p0

    iget v0, v0, Lcom/slideme/sam/manager/model/utils/GifDecoder;->frameCount:I

    move/from16 v22, v0

    const/16 v23, 0x2

    sub-int v16, v22, v23

    .line 182
    .local v16, n:I
    if-lez v16, :cond_2

    .line 183
    const/16 v22, 0x1

    sub-int v22, v16, v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/slideme/sam/manager/model/utils/GifDecoder;->getFrame(I)Landroid/graphics/Bitmap;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/slideme/sam/manager/model/utils/GifDecoder;->lastImage:Landroid/graphics/Bitmap;

    .line 189
    .end local v16           #n:I
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/slideme/sam/manager/model/utils/GifDecoder;->lastImage:Landroid/graphics/Bitmap;

    move-object/from16 v22, v0

    if-eqz v22, :cond_1

    .line 190
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/slideme/sam/manager/model/utils/GifDecoder;->lastImage:Landroid/graphics/Bitmap;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/slideme/sam/manager/model/utils/GifDecoder;->copyPixelToSetInteger(Landroid/graphics/Bitmap;)[I

    move-result-object v19

    .line 192
    .local v19, prev:[I
    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/slideme/sam/manager/model/utils/GifDecoder;->width:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/slideme/sam/manager/model/utils/GifDecoder;->height:I

    move/from16 v25, v0

    mul-int v24, v24, v25

    move-object/from16 v0, v19

    move/from16 v1, v22

    move-object v2, v7

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 195
    move-object/from16 v0, p0

    iget v0, v0, Lcom/slideme/sam/manager/model/utils/GifDecoder;->lastDispose:I

    move/from16 v22, v0

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_1

    .line 197
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 198
    new-instance v17, Landroid/graphics/Paint;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Paint;-><init>()V

    .line 199
    .local v17, paint:Landroid/graphics/Paint;
    sget-object v22, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 200
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/slideme/sam/manager/model/utils/GifDecoder;->transparency:Z

    move/from16 v22, v0

    if-eqz v22, :cond_3

    .line 201
    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 205
    :goto_1
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6}, Landroid/graphics/Canvas;-><init>()V

    .line 206
    .local v6, canvas:Landroid/graphics/Canvas;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/slideme/sam/manager/model/utils/GifDecoder;->lastRect:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move-object v0, v6

    move-object/from16 v1, v22

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 224
    .end local v6           #canvas:Landroid/graphics/Canvas;
    .end local v17           #paint:Landroid/graphics/Paint;
    .end local v19           #prev:[I
    :cond_1
    const/16 v18, 0x1

    .line 225
    .local v18, pass:I
    const/16 v12, 0x8

    .line 226
    .local v12, inc:I
    const/4 v11, 0x0

    .line 227
    .local v11, iline:I
    const/4 v10, 0x0

    .local v10, i:I
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/slideme/sam/manager/model/utils/GifDecoder;->ih:I

    move/from16 v22, v0

    move v0, v10

    move/from16 v1, v22

    if-lt v0, v1, :cond_4

    .line 269
    const/4 v10, 0x0

    :goto_3
    move-object v0, v7

    array-length v0, v0

    move/from16 v22, v0

    move v0, v10

    move/from16 v1, v22

    if-lt v0, v1, :cond_b

    .line 271
    return-void

    .line 185
    .end local v10           #i:I
    .end local v11           #iline:I
    .end local v12           #inc:I
    .end local v18           #pass:I
    .restart local v16       #n:I
    :cond_2
    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/slideme/sam/manager/model/utils/GifDecoder;->lastImage:Landroid/graphics/Bitmap;

    goto/16 :goto_0

    .line 203
    .end local v16           #n:I
    .restart local v17       #paint:Landroid/graphics/Paint;
    .restart local v19       #prev:[I
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/slideme/sam/manager/model/utils/GifDecoder;->lastBgColor:I

    move/from16 v22, v0

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    .line 228
    .end local v17           #paint:Landroid/graphics/Paint;
    .end local v19           #prev:[I
    .restart local v10       #i:I
    .restart local v11       #iline:I
    .restart local v12       #inc:I
    .restart local v18       #pass:I
    :cond_4
    move v15, v10

    .line 229
    .local v15, line:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/slideme/sam/manager/model/utils/GifDecoder;->interlace:Z

    move/from16 v22, v0

    if-eqz v22, :cond_6

    .line 230
    move-object/from16 v0, p0

    iget v0, v0, Lcom/slideme/sam/manager/model/utils/GifDecoder;->ih:I

    move/from16 v22, v0

    move v0, v11

    move/from16 v1, v22

    if-lt v0, v1, :cond_5

    .line 231
    add-int/lit8 v18, v18, 0x1

    .line 232
    packed-switch v18, :pswitch_data_0

    .line 245
    :cond_5
    :goto_4
    move v15, v11

    .line 246
    add-int/2addr v11, v12

    .line 248
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/slideme/sam/manager/model/utils/GifDecoder;->iy:I

    move/from16 v22, v0

    add-int v15, v15, v22

    .line 249
    move-object/from16 v0, p0

    iget v0, v0, Lcom/slideme/sam/manager/model/utils/GifDecoder;->height:I

    move/from16 v22, v0

    move v0, v15

    move/from16 v1, v22

    if-ge v0, v1, :cond_8

    .line 250
    move-object/from16 v0, p0

    iget v0, v0, Lcom/slideme/sam/manager/model/utils/GifDecoder;->width:I

    move/from16 v22, v0

    mul-int v14, v15, v22

    .line 251
    .local v14, k:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/slideme/sam/manager/model/utils/GifDecoder;->ix:I

    move/from16 v22, v0

    add-int v9, v14, v22

    .line 252
    .local v9, dx:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/slideme/sam/manager/model/utils/GifDecoder;->iw:I

    move/from16 v22, v0

    add-int v8, v9, v22

    .line 253
    .local v8, dlim:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/slideme/sam/manager/model/utils/GifDecoder;->width:I

    move/from16 v22, v0

    add-int v22, v22, v14

    move/from16 v0, v22

    move v1, v8

    if-ge v0, v1, :cond_7

    .line 254
    move-object/from16 v0, p0

    iget v0, v0, Lcom/slideme/sam/manager/model/utils/GifDecoder;->width:I

    move/from16 v22, v0

    add-int v8, v14, v22

    .line 256
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/slideme/sam/manager/model/utils/GifDecoder;->iw:I

    move/from16 v22, v0

    mul-int v20, v10, v22

    .local v20, sx:I
    move/from16 v21, v20

    .line 257
    .end local v20           #sx:I
    .local v21, sx:I
    :goto_5
    if-lt v9, v8, :cond_9

    .line 227
    .end local v8           #dlim:I
    .end local v9           #dx:I
    .end local v14           #k:I
    .end local v21           #sx:I
    :cond_8
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_2

    .line 234
    :pswitch_0
    const/4 v11, 0x4

    .line 235
    goto :goto_4

    .line 237
    :pswitch_1
    const/4 v11, 0x2

    .line 238
    const/4 v12, 0x4

    .line 239
    goto :goto_4

    .line 241
    :pswitch_2
    const/4 v11, 0x1

    .line 242
    const/4 v12, 0x2

    goto :goto_4

    .line 259
    .restart local v8       #dlim:I
    .restart local v9       #dx:I
    .restart local v14       #k:I
    .restart local v21       #sx:I
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/slideme/sam/manager/model/utils/GifDecoder;->pixels:[B

    move-object/from16 v22, v0

    add-int/lit8 v20, v21, 0x1

    .end local v21           #sx:I
    .restart local v20       #sx:I
    aget-byte v22, v22, v21

    move/from16 v0, v22

    and-int/lit16 v0, v0, 0xff

    move v13, v0

    .line 260
    .local v13, index:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/slideme/sam/manager/model/utils/GifDecoder;->act:[I

    move-object/from16 v22, v0

    aget v5, v22, v13

    .line 261
    .local v5, c:I
    if-eqz v5, :cond_a

    .line 262
    aput v5, v7, v9

    .line 264
    :cond_a
    add-int/lit8 v9, v9, 0x1

    move/from16 v21, v20

    .end local v20           #sx:I
    .restart local v21       #sx:I
    goto :goto_5

    .line 270
    .end local v5           #c:I
    .end local v8           #dlim:I
    .end local v9           #dx:I
    .end local v13           #index:I
    .end local v14           #k:I
    .end local v15           #line:I
    .end local v21           #sx:I
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/slideme/sam/manager/model/utils/GifDecoder;->image:Landroid/graphics/Bitmap;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/slideme/sam/manager/model/utils/GifDecoder;->image:Landroid/graphics/Bitmap;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v23

    rem-int v23, v10, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/slideme/sam/manager/model/utils/GifDecoder;->image:Landroid/graphics/Bitmap;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v24

    rem-int v24, v10, v24

    sub-int v24, v10, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/slideme/sam/manager/model/utils/GifDecoder;->image:Landroid/graphics/Bitmap;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v25

    div-int v24, v24, v25

    aget v25, v7, v10

    invoke-virtual/range {v22 .. v25}, Landroid/graphics/Bitmap;->setPixel(III)V

    .line 269
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_3

    .line 232
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected skip()V
    .locals 1

    .prologue
    .line 813
    :cond_0
    invoke-virtual {p0}, Lcom/slideme/sam/manager/model/utils/GifDecoder;->readBlock()I

    .line 814
    iget v0, p0, Lcom/slideme/sam/manager/model/utils/GifDecoder;->blockSize:I

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lcom/slideme/sam/manager/model/utils/GifDecoder;->err()Z

    move-result v0

    .line 812
    if-eqz v0, :cond_0

    .line 815
    :cond_1
    return-void
.end method
