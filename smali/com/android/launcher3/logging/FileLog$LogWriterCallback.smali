.class final Lcom/android/launcher3/logging/FileLog$LogWriterCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field private mCurrentFileName:Ljava/lang/String;

.field private mCurrentWriter:Ljava/io/PrintWriter;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/logging/FileLog$LogWriterCallback;->mCurrentFileName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/launcher3/logging/FileLog$LogWriterCallback;->mCurrentWriter:Ljava/io/PrintWriter;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 11

    invoke-static {}, Lcom/android/launcher3/logging/FileLog;->b()Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_7

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x0

    const/4 v3, 0x4

    const-string v4, "log-"

    const/4 v5, 0x0

    const/4 v6, 0x2

    if-eq v0, v1, :cond_3

    if-eq v0, v6, :cond_2

    const/4 v6, 0x3

    if-eq v0, v6, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/logging/FileLog$LogWriterCallback;->mCurrentWriter:Ljava/io/PrintWriter;

    invoke-static {v0}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    iput-object v2, p0, Lcom/android/launcher3/logging/FileLog$LogWriterCallback;->mCurrentWriter:Ljava/io/PrintWriter;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Landroid/util/Pair;

    iget-object p1, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz p1, :cond_1

    :goto_0
    if-ge v5, v3, :cond_1

    iget-object p1, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/io/PrintWriter;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/launcher3/logging/FileLog;->c(Ljava/io/PrintWriter;Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return v1

    :cond_2
    iget-object p1, p0, Lcom/android/launcher3/logging/FileLog$LogWriterCallback;->mCurrentWriter:Ljava/io/PrintWriter;

    invoke-static {p1}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    iput-object v2, p0, Lcom/android/launcher3/logging/FileLog$LogWriterCallback;->mCurrentWriter:Ljava/io/PrintWriter;

    return v1

    :cond_3
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x6

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    rem-int/2addr v4, v3

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher3/logging/FileLog$LogWriterCallback;->mCurrentFileName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/android/launcher3/logging/FileLog$LogWriterCallback;->mCurrentWriter:Ljava/io/PrintWriter;

    invoke-static {v4}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    iput-object v2, p0, Lcom/android/launcher3/logging/FileLog$LogWriterCallback;->mCurrentWriter:Ljava/io/PrintWriter;

    :cond_4
    :try_start_0
    iget-object v4, p0, Lcom/android/launcher3/logging/FileLog$LogWriterCallback;->mCurrentWriter:Ljava/io/PrintWriter;

    if-nez v4, :cond_6

    iput-object v3, p0, Lcom/android/launcher3/logging/FileLog$LogWriterCallback;->mCurrentFileName:Ljava/lang/String;

    new-instance v4, Ljava/io/File;

    invoke-static {}, Lcom/android/launcher3/logging/FileLog;->b()Ljava/io/File;

    move-result-object v7

    invoke-direct {v4, v7, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v7

    invoke-virtual {v3, v7, v8}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 v7, 0xa

    const/16 v8, 0x24

    invoke-virtual {v3, v7, v8}, Ljava/util/Calendar;->add(II)V

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v7

    const-wide/32 v9, 0x800000

    cmp-long v0, v7, v9

    if-gez v0, :cond_5

    move v5, v1

    :cond_5
    new-instance v0, Ljava/io/PrintWriter;

    new-instance v3, Ljava/io/FileWriter;

    invoke-direct {v3, v4, v5}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    invoke-direct {v0, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Lcom/android/launcher3/logging/FileLog$LogWriterCallback;->mCurrentWriter:Ljava/io/PrintWriter;

    :cond_6
    iget-object v0, p0, Lcom/android/launcher3/logging/FileLog$LogWriterCallback;->mCurrentWriter:Ljava/io/PrintWriter;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/launcher3/logging/FileLog$LogWriterCallback;->mCurrentWriter:Ljava/io/PrintWriter;

    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    invoke-static {}, Lcom/android/launcher3/logging/FileLog;->a()Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v6}, Landroid/os/Handler;->removeMessages(I)V

    invoke-static {}, Lcom/android/launcher3/logging/FileLog;->a()Landroid/os/Handler;

    move-result-object p1

    const-wide/16 v3, 0x1388

    invoke-virtual {p1, v6, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string v0, "FileLog"

    const-string v3, "Error writing logs to file"

    invoke-static {v0, v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object p1, p0, Lcom/android/launcher3/logging/FileLog$LogWriterCallback;->mCurrentWriter:Ljava/io/PrintWriter;

    invoke-static {p1}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    iput-object v2, p0, Lcom/android/launcher3/logging/FileLog$LogWriterCallback;->mCurrentWriter:Ljava/io/PrintWriter;

    :cond_7
    :goto_1
    return v1
.end method
