.class public final Lcom/android/app/viewcapture/SettingsAwareViewCapture$mDumpCallback$1;
.super Landroid/window/IDumpCallback$Stub;
.source "SourceFile"


# instance fields
.field final synthetic this$0:LA0/g;


# direct methods
.method public constructor <init>(LA0/g;)V
    .locals 0

    iput-object p1, p0, Lcom/android/app/viewcapture/SettingsAwareViewCapture$mDumpCallback$1;->this$0:LA0/g;

    invoke-direct {p0}, Landroid/window/IDumpCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDump(Landroid/os/ParcelFileDescriptor;)V
    .locals 3

    const-string v0, "out"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v0, p1}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    iget-object p0, p0, Lcom/android/app/viewcapture/SettingsAwareViewCapture$mDumpCallback$1;->this$0:LA0/g;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object p1, p0, LA0/g;->h:Landroid/content/Context;

    iget-boolean v1, p0, LA0/x;->e:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1}, LA0/x;->getExportedData(Landroid/content/Context;)LB0/b;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, v2}, Lcom/google/protobuf/J;->getSerializedSize(Lcom/google/protobuf/C0;)I

    move-result p1

    sget-object v1, Lcom/google/protobuf/r;->b:Ljava/util/logging/Logger;

    const/16 v1, 0x1000

    if-le p1, v1, :cond_0

    move p1, v1

    :cond_0
    new-instance v1, Lcom/google/protobuf/q;

    invoke-direct {v1, v0, p1}, Lcom/google/protobuf/q;-><init>(Ljava/io/OutputStream;I)V

    invoke-virtual {p0, v1}, Lcom/google/protobuf/J;->writeTo(Lcom/google/protobuf/r;)V

    iget p0, v1, Lcom/google/protobuf/q;->f:I

    if-lez p0, :cond_1

    invoke-virtual {v1}, Lcom/google/protobuf/q;->O()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    sget-object p0, Le3/f;->a:Le3/f;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v0, v2}, Lk3/a;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :goto_1
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-static {v0, p0}, Lk3/a;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    sget-object p1, LA0/h;->a:Ljava/lang/String;

    const-string v0, "failed to dump data to wm trace"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return-void
.end method
