.class Lcom/slideme/sam/manager/model/business/SamAutoUpdater$2;
.super Ljava/lang/Object;
.source "SamAutoUpdater.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/slideme/sam/manager/model/business/SamAutoUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/slideme/sam/manager/model/business/SamAutoUpdater;


# direct methods
.method constructor <init>(Lcom/slideme/sam/manager/model/business/SamAutoUpdater;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/slideme/sam/manager/model/business/SamAutoUpdater$2;->this$0:Lcom/slideme/sam/manager/model/business/SamAutoUpdater;

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 25

    .prologue
    .line 164
    const-string v21, "misc"

    .line 165
    .local v21, version:Ljava/lang/String;
    const/4 v7, 0x0

    .line 168
    .local v7, conn:Ljava/net/URLConnection;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/slideme/sam/manager/model/business/SamAutoUpdater$2;->this$0:Lcom/slideme/sam/manager/model/business/SamAutoUpdater;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/slideme/sam/manager/model/business/SamAutoUpdater;->access$5(Lcom/slideme/sam/manager/model/business/SamAutoUpdater;)Landroid/app/Activity;

    move-result-object v22

    const v23, 0x7f080008

    invoke-virtual/range {v22 .. v23}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 169
    .local v18, partner:Ljava/lang/String;
    const-string v22, "global"

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1

    .line 170
    new-instance v9, Ljava/net/URL;

    new-instance v22, Ljava/lang/StringBuilder;

    sget-object v23, Lcom/slideme/sam/manager/model/SamConstants;->SLIDEME_HTTP_URL:Ljava/lang/String;

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v23, "/sam-misc.apk"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object v0, v9

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 174
    .local v9, downloadURL:Ljava/net/URL;
    :goto_0
    invoke-virtual {v9}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 183
    if-nez v7, :cond_2

    .line 185
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/slideme/sam/manager/model/business/SamAutoUpdater$2;->this$0:Lcom/slideme/sam/manager/model/business/SamAutoUpdater;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/slideme/sam/manager/model/business/SamAutoUpdater;->access$6(Lcom/slideme/sam/manager/model/business/SamAutoUpdater;)Landroid/os/Handler;

    move-result-object v22

    const/16 v23, 0xb

    invoke-virtual/range {v22 .. v23}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 247
    .end local v9           #downloadURL:Ljava/net/URL;
    .end local v18           #partner:Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 172
    .restart local v18       #partner:Ljava/lang/String;
    :cond_1
    :try_start_1
    new-instance v9, Ljava/net/URL;

    new-instance v22, Ljava/lang/StringBuilder;

    sget-object v23, Lcom/slideme/sam/manager/model/SamConstants;->SLIDEME_HTTP_URL:Ljava/lang/String;

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v23, "/files/sam/updates/"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/slideme/sam/manager/model/business/SamAutoUpdater$2;->this$0:Lcom/slideme/sam/manager/model/business/SamAutoUpdater;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/slideme/sam/manager/model/business/SamAutoUpdater;->access$5(Lcom/slideme/sam/manager/model/business/SamAutoUpdater;)Landroid/app/Activity;

    move-result-object v23

    const v24, 0x7f080009

    invoke-virtual/range {v23 .. v24}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "/"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "/sam-misc.apk"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object v0, v9

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .restart local v9       #downloadURL:Ljava/net/URL;
    goto :goto_0

    .line 177
    .end local v9           #downloadURL:Ljava/net/URL;
    .end local v18           #partner:Ljava/lang/String;
    :catch_0
    move-exception v22

    move-object/from16 v10, v22

    .line 179
    .local v10, e:Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/slideme/sam/manager/model/business/SamAutoUpdater$2;->this$0:Lcom/slideme/sam/manager/model/business/SamAutoUpdater;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/slideme/sam/manager/model/business/SamAutoUpdater;->access$6(Lcom/slideme/sam/manager/model/business/SamAutoUpdater;)Landroid/os/Handler;

    move-result-object v22

    const/16 v23, 0xb

    invoke-virtual/range {v22 .. v23}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 189
    .end local v10           #e:Ljava/lang/Exception;
    .restart local v9       #downloadURL:Ljava/net/URL;
    .restart local v18       #partner:Ljava/lang/String;
    :cond_2
    const/16 v16, 0x0

    .line 190
    .local v16, output:Ljava/io/FileOutputStream;
    const/4 v11, 0x0

    .line 191
    .local v11, input:Ljava/io/InputStream;
    new-instance v22, Ljava/lang/StringBuilder;

    sget-object v23, Lcom/slideme/sam/manager/model/SamConstants;->DOWNLOAD_PATH:Ljava/lang/String;

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 192
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/slideme/sam/manager/model/business/SamAutoUpdater$2;->this$0:Lcom/slideme/sam/manager/model/business/SamAutoUpdater;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/slideme/sam/manager/model/business/SamAutoUpdater;->access$5(Lcom/slideme/sam/manager/model/business/SamAutoUpdater;)Landroid/app/Activity;

    move-result-object v23

    const v24, 0x7f080013

    invoke-virtual/range {v23 .. v24}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "-"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ".apk"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    .line 191
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 195
    .local v15, out:Ljava/lang/String;
    :try_start_2
    new-instance v17, Ljava/io/FileOutputStream;

    move-object/from16 v0, v17

    move-object v1, v15

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    .line 196
    .end local v16           #output:Ljava/io/FileOutputStream;
    .local v17, output:Ljava/io/FileOutputStream;
    :try_start_3
    invoke-virtual {v7}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v11

    .line 197
    const/16 v22, 0x2000

    move/from16 v0, v22

    new-array v0, v0, [B

    move-object v6, v0

    .line 198
    .local v6, buffer:[B
    const/4 v14, 0x0

    .line 200
    .local v14, n:I
    :goto_2
    invoke-virtual {v11, v6}, Ljava/io/InputStream;->read([B)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result v14

    if-gez v14, :cond_5

    .line 211
    if-eqz v11, :cond_3

    .line 212
    :try_start_4
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V

    .line 214
    :cond_3
    if-eqz v17, :cond_4

    .line 215
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 221
    :cond_4
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/slideme/sam/manager/model/business/SamAutoUpdater$2;->this$0:Lcom/slideme/sam/manager/model/business/SamAutoUpdater;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/slideme/sam/manager/model/business/SamAutoUpdater;->access$6(Lcom/slideme/sam/manager/model/business/SamAutoUpdater;)Landroid/os/Handler;

    move-result-object v22

    const/16 v23, 0xa

    invoke-virtual/range {v22 .. v23}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 222
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/slideme/sam/manager/model/business/SamAutoUpdater$2;->this$0:Lcom/slideme/sam/manager/model/business/SamAutoUpdater;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/slideme/sam/manager/model/business/SamAutoUpdater;->access$6(Lcom/slideme/sam/manager/model/business/SamAutoUpdater;)Landroid/os/Handler;

    move-result-object v22

    const/16 v23, 0xc

    invoke-virtual/range {v22 .. v23}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 224
    new-instance v12, Landroid/content/Intent;

    const-string v22, "android.intent.action.VIEW"

    move-object v0, v12

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 225
    .local v12, installIntent:Landroid/content/Intent;
    new-instance v22, Ljava/io/File;

    move-object/from16 v0, v22

    move-object v1, v15

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static/range {v22 .. v22}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v13

    .line 226
    .local v13, installUri:Landroid/net/Uri;
    const-string v22, "application/vnd.android.package-archive"

    move-object v0, v12

    move-object v1, v13

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/slideme/sam/manager/model/business/SamAutoUpdater$2;->this$0:Lcom/slideme/sam/manager/model/business/SamAutoUpdater;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/slideme/sam/manager/model/business/SamAutoUpdater;->access$5(Lcom/slideme/sam/manager/model/business/SamAutoUpdater;)Landroid/app/Activity;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    .line 229
    .local v8, context:Landroid/content/Context;
    invoke-virtual {v8}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v20

    check-cast v20, Lcom/slideme/sam/manager/SAM;

    .line 230
    .local v20, sam:Lcom/slideme/sam/manager/SAM;
    invoke-virtual/range {v20 .. v20}, Lcom/slideme/sam/manager/SAM;->deleteIni()V

    .line 232
    const-string v22, "alarm"

    move-object v0, v8

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AlarmManager;

    .line 233
    .local v5, alarmManager:Landroid/app/AlarmManager;
    const/16 v22, 0x0

    const/high16 v23, 0x1000

    move-object v0, v8

    move/from16 v1, v22

    move-object v2, v12

    move/from16 v3, v23

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v19

    .line 234
    .local v19, restart:Landroid/app/PendingIntent;
    const/16 v22, 0x2

    const-wide/16 v23, 0x3e8

    move-object v0, v5

    move/from16 v1, v22

    move-wide/from16 v2, v23

    move-object/from16 v4, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 245
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/slideme/sam/manager/model/business/SamAutoUpdater$2;->this$0:Lcom/slideme/sam/manager/model/business/SamAutoUpdater;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/slideme/sam/manager/model/business/SamAutoUpdater;->access$6(Lcom/slideme/sam/manager/model/business/SamAutoUpdater;)Landroid/os/Handler;

    move-result-object v22

    const/16 v23, 0xd

    invoke-virtual/range {v22 .. v23}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 246
    const/16 v22, 0x0

    invoke-static/range {v22 .. v22}, Ljava/lang/System;->exit(I)V

    goto/16 :goto_1

    .line 201
    .end local v5           #alarmManager:Landroid/app/AlarmManager;
    .end local v8           #context:Landroid/content/Context;
    .end local v12           #installIntent:Landroid/content/Intent;
    .end local v13           #installUri:Landroid/net/Uri;
    .end local v19           #restart:Landroid/app/PendingIntent;
    .end local v20           #sam:Lcom/slideme/sam/manager/SAM;
    :cond_5
    const/16 v22, 0x0

    :try_start_5
    move-object/from16 v0, v17

    move-object v1, v6

    move/from16 v2, v22

    move v3, v14

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_2

    .line 204
    .end local v6           #buffer:[B
    .end local v14           #n:I
    :catch_1
    move-exception v22

    move-object/from16 v10, v22

    move-object/from16 v16, v17

    .line 205
    .end local v17           #output:Ljava/io/FileOutputStream;
    .restart local v10       #e:Ljava/lang/Exception;
    .restart local v16       #output:Ljava/io/FileOutputStream;
    :goto_4
    :try_start_6
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    .line 206
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/slideme/sam/manager/model/business/SamAutoUpdater$2;->this$0:Lcom/slideme/sam/manager/model/business/SamAutoUpdater;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/slideme/sam/manager/model/business/SamAutoUpdater;->access$6(Lcom/slideme/sam/manager/model/business/SamAutoUpdater;)Landroid/os/Handler;

    move-result-object v22

    const/16 v23, 0xb

    invoke-virtual/range {v22 .. v23}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 211
    if-eqz v11, :cond_6

    .line 212
    :try_start_7
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V

    .line 214
    :cond_6
    if-eqz v16, :cond_0

    .line 215
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_1

    .line 217
    :catch_2
    move-exception v22

    goto/16 :goto_1

    .line 209
    .end local v10           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v22

    .line 211
    :goto_5
    if-eqz v11, :cond_7

    .line 212
    :try_start_8
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V

    .line 214
    :cond_7
    if-eqz v16, :cond_8

    .line 215
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 219
    :cond_8
    :goto_6
    throw v22

    .line 217
    .end local v16           #output:Ljava/io/FileOutputStream;
    .restart local v6       #buffer:[B
    .restart local v14       #n:I
    .restart local v17       #output:Ljava/io/FileOutputStream;
    :catch_3
    move-exception v22

    goto/16 :goto_3

    .end local v6           #buffer:[B
    .end local v14           #n:I
    .end local v17           #output:Ljava/io/FileOutputStream;
    .restart local v16       #output:Ljava/io/FileOutputStream;
    :catch_4
    move-exception v23

    goto :goto_6

    .line 209
    .end local v16           #output:Ljava/io/FileOutputStream;
    .restart local v17       #output:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v22

    move-object/from16 v16, v17

    .end local v17           #output:Ljava/io/FileOutputStream;
    .restart local v16       #output:Ljava/io/FileOutputStream;
    goto :goto_5

    .line 204
    :catch_5
    move-exception v22

    move-object/from16 v10, v22

    goto :goto_4
.end method
