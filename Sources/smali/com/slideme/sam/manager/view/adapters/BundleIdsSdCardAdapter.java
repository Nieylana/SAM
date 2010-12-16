.class public Lcom/slideme/sam/manager/view/adapters/BundleIdsSdCardAdapter;
.super Ljava/lang/Object;
.source "BundleIdsSdCardAdapter.java"


# static fields
.field private static final DATABASE_CREATE:Ljava/lang/String; = "create table IF NOT EXISTS bundleids (_id integer primary key autoincrement, bundleId text not null, createdStamp long, modifiedStamp long);"

.field private static final DATABASE_CREATE2:Ljava/lang/String; = "create table IF NOT EXISTS installed_bundles (_id integer primary key autoincrement, bundleId text not null, createdStamp long, modifiedStamp long);"

.field public static final DATABASE_FILE_PATH:Ljava/lang/String; = null

.field public static final DATABASE_NAME:Ljava/lang/String; = "applog.bin"

.field private static final DATABASE_TABLE:Ljava/lang/String; = "bundleids"

.field private static final DATABASE_TABLE2:Ljava/lang/String; = "installed_bundles"

.field public static final KEY_BUNDLEID:Ljava/lang/String; = "bundleId"

.field public static final KEY_CREATED:Ljava/lang/String; = "createdStamp"

.field public static final KEY_MODIFIED:Ljava/lang/String; = "modifiedStamp"

.field public static final KEY_ROWID:Ljava/lang/String; = "_id"

.field private static final TAG:Ljava/lang/String; = "BundleIdsSdCardAdapter"


# instance fields
.field private database:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/slideme/sam/manager/SAM;->getSdCardPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "profile/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/slideme/sam/manager/view/adapters/BundleIdsSdCardAdapter;->DATABASE_FILE_PATH:Ljava/lang/String;

    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/slideme/sam/manager/view/adapters/BundleIdsSdCardAdapter;->DATABASE_FILE_PATH:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "applog.bin"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->openOrCreateDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/slideme/sam/manager/view/adapters/BundleIdsSdCardAdapter;->database:Landroid/database/sqlite/SQLiteDatabase;

    .line 37
    invoke-direct {p0}, Lcom/slideme/sam/manager/view/adapters/BundleIdsSdCardAdapter;->createTables()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    iget-object v0, p0, Lcom/slideme/sam/manager/view/adapters/BundleIdsSdCardAdapter;->database:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/slideme/sam/manager/view/adapters/BundleIdsSdCardAdapter;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 50
    :cond_0
    :goto_0
    return-void

    .line 39
    :catch_0
    move-exception v0

    .line 45
    iget-object v0, p0, Lcom/slideme/sam/manager/view/adapters/BundleIdsSdCardAdapter;->database:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/slideme/sam/manager/view/adapters/BundleIdsSdCardAdapter;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_0

    .line 44
    :catchall_0
    move-exception v0

    .line 45
    iget-object v1, p0, Lcom/slideme/sam/manager/view/adapters/BundleIdsSdCardAdapter;->database:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_1

    .line 47
    iget-object v1, p0, Lcom/slideme/sam/manager/view/adapters/BundleIdsSdCardAdapter;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 49
    :cond_1
    throw v0
.end method

.method private createTables()V
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/slideme/sam/manager/view/adapters/BundleIdsSdCardAdapter;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "create table IF NOT EXISTS bundleids (_id integer primary key autoincrement, bundleId text not null, createdStamp long, modifiedStamp long);"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lcom/slideme/sam/manager/view/adapters/BundleIdsSdCardAdapter;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "create table IF NOT EXISTS installed_bundles (_id integer primary key autoincrement, bundleId text not null, createdStamp long, modifiedStamp long);"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 56
    return-void
.end method


# virtual methods
.method public addDownloadedId(Ljava/lang/String;JJ)J
    .locals 12
    .parameter "bundleId"
    .parameter "createdStamp"
    .parameter "modifiedStamp"

    .prologue
    .line 113
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 114
    .local v11, initialValues:Landroid/content/ContentValues;
    const-string v0, "bundleId"

    invoke-virtual {v11, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    const-string v0, "createdStamp"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 116
    const-string v0, "modifiedStamp"

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 117
    iget-object v0, p0, Lcom/slideme/sam/manager/view/adapters/BundleIdsSdCardAdapter;->database:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x1

    const-string v2, "installed_bundles"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "bundleId"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "createdStamp"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string v5, "modifiedStamp"

    aput-object v5, v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "bundleId=\""

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 118
    .local v10, c:Landroid/database/Cursor;
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 120
    const-wide/16 v0, 0x0

    .line 123
    :goto_0
    return-wide v0

    .line 122
    :cond_0
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 123
    iget-object v0, p0, Lcom/slideme/sam/manager/view/adapters/BundleIdsSdCardAdapter;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "installed_bundles"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v11}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    goto :goto_0
.end method

.method public addInstalledId(Ljava/lang/String;JJ)J
    .locals 12
    .parameter "bundleId"
    .parameter "createdStamp"
    .parameter "modifiedStamp"

    .prologue
    .line 98
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 99
    .local v11, initialValues:Landroid/content/ContentValues;
    const-string v0, "bundleId"

    invoke-virtual {v11, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const-string v0, "createdStamp"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 101
    const-string v0, "modifiedStamp"

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 102
    iget-object v0, p0, Lcom/slideme/sam/manager/view/adapters/BundleIdsSdCardAdapter;->database:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x1

    const-string v2, "bundleids"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "bundleId"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "createdStamp"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string v5, "modifiedStamp"

    aput-object v5, v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "bundleId=\""

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 103
    .local v10, c:Landroid/database/Cursor;
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 105
    const-wide/16 v0, 0x0

    .line 108
    :goto_0
    return-wide v0

    .line 107
    :cond_0
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 108
    iget-object v0, p0, Lcom/slideme/sam/manager/view/adapters/BundleIdsSdCardAdapter;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "bundleids"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v11}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    goto :goto_0
.end method

.method public close()V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/slideme/sam/manager/view/adapters/BundleIdsSdCardAdapter;->database:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/slideme/sam/manager/view/adapters/BundleIdsSdCardAdapter;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 64
    :cond_0
    return-void
.end method

.method public deleteId(J)Z
    .locals 4
    .parameter "rowId"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/slideme/sam/manager/view/adapters/BundleIdsSdCardAdapter;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "bundleids"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "_id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public fetchAllDownloadedIds()Landroid/database/Cursor;
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 160
    iget-object v0, p0, Lcom/slideme/sam/manager/view/adapters/BundleIdsSdCardAdapter;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "installed_bundles"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "bundleId"

    aput-object v5, v2, v4

    const/4 v4, 0x2

    .line 161
    const-string v5, "createdStamp"

    aput-object v5, v2, v4

    const/4 v4, 0x3

    const-string v5, "modifiedStamp"

    aput-object v5, v2, v4

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    .line 160
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public fetchAllUpdateIds()Landroid/database/Cursor;
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 149
    iget-object v0, p0, Lcom/slideme/sam/manager/view/adapters/BundleIdsSdCardAdapter;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "bundleids"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "bundleId"

    aput-object v5, v2, v4

    const/4 v4, 0x2

    .line 150
    const-string v5, "createdStamp"

    aput-object v5, v2, v4

    const/4 v4, 0x3

    const-string v5, "modifiedStamp"

    aput-object v5, v2, v4

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    .line 149
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public fetchId(J)Landroid/database/Cursor;
    .locals 11
    .parameter "rowId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 176
    iget-object v0, p0, Lcom/slideme/sam/manager/view/adapters/BundleIdsSdCardAdapter;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "bundleids"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v6, "_id"

    aput-object v6, v3, v4

    .line 177
    const-string v4, "bundleId"

    aput-object v4, v3, v1

    const/4 v4, 0x2

    const-string v6, "createdStamp"

    aput-object v6, v3, v4

    const/4 v4, 0x3

    const-string v6, "modifiedStamp"

    aput-object v6, v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "_id="

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v6, v5

    move-object v7, v5

    move-object v8, v5

    move-object v9, v5

    .line 176
    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 179
    .local v10, mCursor:Landroid/database/Cursor;
    if-eqz v10, :cond_0

    .line 180
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 182
    :cond_0
    return-object v10
.end method

.method public getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 3

    .prologue
    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/slideme/sam/manager/view/adapters/BundleIdsSdCardAdapter;->DATABASE_FILE_PATH:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 73
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "applog.bin"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 74
    const/4 v2, 0x1

    .line 72
    invoke-static {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/slideme/sam/manager/view/adapters/BundleIdsSdCardAdapter;->database:Landroid/database/sqlite/SQLiteDatabase;

    .line 75
    iget-object v0, p0, Lcom/slideme/sam/manager/view/adapters/BundleIdsSdCardAdapter;->database:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method public getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 3

    .prologue
    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/slideme/sam/manager/view/adapters/BundleIdsSdCardAdapter;->DATABASE_FILE_PATH:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 81
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "applog.bin"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 82
    const/4 v2, 0x0

    .line 80
    invoke-static {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/slideme/sam/manager/view/adapters/BundleIdsSdCardAdapter;->database:Landroid/database/sqlite/SQLiteDatabase;

    .line 83
    iget-object v0, p0, Lcom/slideme/sam/manager/view/adapters/BundleIdsSdCardAdapter;->database:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method public open()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/slideme/sam/manager/view/adapters/BundleIdsSdCardAdapter;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public removeId([Ljava/lang/String;)Z
    .locals 3
    .parameter "id"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/slideme/sam/manager/view/adapters/BundleIdsSdCardAdapter;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "bundleids"

    const-string v2, "bundleId=?"

    invoke-virtual {v0, v1, v2, p1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateBundleId(JLjava/lang/String;JJ)Z
    .locals 5
    .parameter "rowId"
    .parameter "bundleId"
    .parameter "createdStamp"
    .parameter "modifiedStamp"

    .prologue
    .line 198
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 199
    .local v0, args:Landroid/content/ContentValues;
    const-string v1, "bundleId"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    const-string v1, "modifiedStamp"

    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 203
    iget-object v1, p0, Lcom/slideme/sam/manager/view/adapters/BundleIdsSdCardAdapter;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "bundleids"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "_id="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
