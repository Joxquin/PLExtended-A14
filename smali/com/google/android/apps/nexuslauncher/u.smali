.class public final Lcom/google/android/apps/nexuslauncher/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/util/SafeCloseable;


# static fields
.field public static final m:Lcom/android/launcher3/util/MainThreadInitializedObject;

.field public static final n:Landroid/os/Looper;


# instance fields
.field public final d:Landroid/content/Context;

.field public final e:Lcom/google/android/apps/nexuslauncher/OSEManager$NetworkFetcher;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/Object;

.field public final h:Landroid/os/Handler;

.field public i:Lcom/google/android/apps/nexuslauncher/p;

.field public final j:Lcom/google/android/apps/nexuslauncher/t;

.field public final k:Lcom/google/android/apps/nexuslauncher/r;

.field public final l:Ljava/util/List;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/launcher3/util/MainThreadInitializedObject;

    sget-object v1, Lcom/google/android/apps/nexuslauncher/l;->a:Lcom/google/android/apps/nexuslauncher/l;

    invoke-direct {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;-><init>(Lcom/android/launcher3/util/MainThreadInitializedObject$ObjectProvider;)V

    sput-object v0, Lcom/google/android/apps/nexuslauncher/u;->m:Lcom/android/launcher3/util/MainThreadInitializedObject;

    const/4 v0, 0x0

    const-string v1, "OSEManager"

    invoke-static {v0, v1}, Lcom/android/launcher3/util/Executors;->createAndStartNewLooper(ILjava/lang/String;)Landroid/os/Looper;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/nexuslauncher/u;->n:Landroid/os/Looper;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    new-instance v0, Lcom/google/android/apps/nexuslauncher/OSEManager$NetworkFetcher;

    invoke-direct {v0}, Lcom/google/android/apps/nexuslauncher/OSEManager$NetworkFetcher;-><init>()V

    const-string v1, "context"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/u;->d:Landroid/content/Context;

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/u;->e:Lcom/google/android/apps/nexuslauncher/OSEManager$NetworkFetcher;

    const-string v0, "cached_search_info.pb"

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/u;->f:Ljava/lang/String;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/u;->g:Ljava/lang/Object;

    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/google/android/apps/nexuslauncher/u;->n:Landroid/os/Looper;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/u;->h:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/apps/nexuslauncher/p;

    const/4 v2, 0x0

    const-string v3, "com.google.android.googlequicksearchbox"

    invoke-direct {v1, v3, v2}, Lcom/google/android/apps/nexuslauncher/p;-><init>(Ljava/lang/String;Lcom/google/android/apps/nexuslauncher/n;)V

    iput-object v1, p0, Lcom/google/android/apps/nexuslauncher/u;->i:Lcom/google/android/apps/nexuslauncher/p;

    new-instance v1, Lcom/google/android/apps/nexuslauncher/t;

    invoke-direct {v1, p0, v0}, Lcom/google/android/apps/nexuslauncher/t;-><init>(Lcom/google/android/apps/nexuslauncher/u;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/google/android/apps/nexuslauncher/u;->j:Lcom/google/android/apps/nexuslauncher/t;

    new-instance v1, Lcom/google/android/apps/nexuslauncher/r;

    invoke-direct {v1, p0}, Lcom/google/android/apps/nexuslauncher/r;-><init>(Lcom/google/android/apps/nexuslauncher/u;)V

    iput-object v1, p0, Lcom/google/android/apps/nexuslauncher/u;->k:Lcom/google/android/apps/nexuslauncher/r;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/apps/nexuslauncher/u;->l:Ljava/util/List;

    new-instance v1, Lcom/google/android/apps/nexuslauncher/k;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p0, v2}, Lcom/google/android/apps/nexuslauncher/k;-><init>(Ljava/lang/Object;Lcom/google/android/apps/nexuslauncher/u;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {p0, v2}, Lcom/google/android/apps/nexuslauncher/u;->d(I)V

    return-void
.end method

.method public static b(Ljava/lang/String;LZ1/b;)Landroid/content/Intent;
    .locals 2

    invoke-virtual {p1}, LZ1/b;->h()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, LZ1/b;->f()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, LZ1/b;->e()Lcom/google/android/apps/nexuslauncher/searchwidget/thirdparty/IntentDefinitionType;

    move-result-object v0

    sget-object v1, Lcom/google/android/apps/nexuslauncher/searchwidget/thirdparty/IntentDefinitionType;->e:Lcom/google/android/apps/nexuslauncher/searchwidget/thirdparty/IntentDefinitionType;

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, LZ1/b;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p1}, LZ1/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, LZ1/b;->getUri()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, LZ1/b;->e()Lcom/google/android/apps/nexuslauncher/searchwidget/thirdparty/IntentDefinitionType;

    move-result-object v0

    sget-object v1, Lcom/google/android/apps/nexuslauncher/searchwidget/thirdparty/IntentDefinitionType;->f:Lcom/google/android/apps/nexuslauncher/searchwidget/thirdparty/IntentDefinitionType;

    if-ne v0, v1, :cond_2

    invoke-virtual {p1}, LZ1/b;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p1}, LZ1/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p1}, LZ1/b;->c()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p0, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p0

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, LZ1/b;->e()Lcom/google/android/apps/nexuslauncher/searchwidget/thirdparty/IntentDefinitionType;

    move-result-object v0

    sget-object v1, Lcom/google/android/apps/nexuslauncher/searchwidget/thirdparty/IntentDefinitionType;->g:Lcom/google/android/apps/nexuslauncher/searchwidget/thirdparty/IntentDefinitionType;

    if-ne v0, v1, :cond_3

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p1}, LZ1/b;->b()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method


# virtual methods
.method public final a(Lcom/google/android/apps/nexuslauncher/m;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/u;->l:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final c(Lcom/google/android/apps/nexuslauncher/m;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/u;->l:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final close()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/u;->h:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/u;->g:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/u;->h:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/apps/nexuslauncher/q;

    invoke-direct {v1, p0}, Lcom/google/android/apps/nexuslauncher/q;-><init>(Lcom/google/android/apps/nexuslauncher/u;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final d(I)V
    .locals 4

    if-nez p1, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    int-to-double v2, p1

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-long v0, v0

    const/16 v2, 0x3e8

    int-to-long v2, v2

    mul-long/2addr v0, v2

    :goto_0
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/u;->h:Landroid/os/Handler;

    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/u;->g:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/u;->h:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/apps/nexuslauncher/s;

    invoke-direct {v3, p0, p1}, Lcom/google/android/apps/nexuslauncher/s;-><init>(Lcom/google/android/apps/nexuslauncher/u;I)V

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/u;->g:Ljava/lang/Object;

    invoke-virtual {v2, v3, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    return-void
.end method

.method public final decodeBitmap([B)Landroid/graphics/Bitmap;
    .locals 2

    const-string p0, "bytes"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    array-length p0, p1

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sget-object v1, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->outConfig:Landroid/graphics/Bitmap$Config;

    sget-object v1, Le3/f;->a:Le3/f;

    const/4 v1, 0x0

    invoke-static {p1, v1, p0, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    const-string p1, "decodeByteArray(\n       \u2026nfig.HARDWARE }\n        )"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final fetchTargetInfo(Ljava/lang/String;)Lcom/google/android/apps/nexuslauncher/n;
    .locals 7

    const-string v0, "osePkg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/u;->e:Lcom/google/android/apps/nexuslauncher/OSEManager$NetworkFetcher;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "https://www.gstatic.com/android_search/search_providers/v1/search_providers.pb"

    invoke-static {v0}, Lcom/google/android/apps/nexuslauncher/OSEManager$NetworkFetcher;->a(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, LZ1/k;->c([B)LZ1/k;

    move-result-object v0

    invoke-virtual {v0}, LZ1/k;->b()Lcom/google/protobuf/S;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, LZ1/g;

    invoke-virtual {v3}, LZ1/g;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_1
    move-object v2, v1

    :goto_0
    check-cast v2, LZ1/g;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, LZ1/g;->d()Z

    move-result v0

    if-nez v0, :cond_2

    return-object v1

    :cond_2
    invoke-static {}, LZ1/e;->l()LZ1/d;

    move-result-object v0

    invoke-virtual {v0, p1}, LZ1/d;->a(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/u;->e:Lcom/google/android/apps/nexuslauncher/OSEManager$NetworkFetcher;

    invoke-virtual {v2}, LZ1/g;->b()LZ1/i;

    move-result-object v4

    invoke-virtual {v4}, LZ1/i;->c()Ljava/lang/String;

    move-result-object v4

    const-string v5, "provider.searchIcon.iconXxxhdpiUrl"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4}, Lcom/google/android/apps/nexuslauncher/OSEManager$NetworkFetcher;->a(Ljava/lang/String;)[B

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    invoke-static {v3, v5, v4}, Lcom/google/protobuf/ByteString;->j([BII)Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-virtual {v0, v3}, LZ1/d;->b(Lcom/google/protobuf/ByteString;)V

    invoke-virtual {v2}, LZ1/g;->b()LZ1/i;

    move-result-object v3

    invoke-virtual {v3}, LZ1/i;->d()LZ1/b;

    move-result-object v3

    const-string v4, "provider.searchIcon.intentDefinition"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v3}, Lcom/google/android/apps/nexuslauncher/u;->b(Ljava/lang/String;LZ1/b;)Landroid/content/Intent;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/h;->b(Ljava/lang/Object;)V

    invoke-virtual {v3, v5}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, LZ1/d;->c(Ljava/lang/String;)V

    invoke-virtual {v2}, LZ1/g;->e()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, LZ1/g;->c()LZ1/i;

    move-result-object v3

    invoke-virtual {v3}, LZ1/i;->d()LZ1/b;

    move-result-object v3

    const-string v4, "provider.voiceIcon.intentDefinition"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v3}, Lcom/google/android/apps/nexuslauncher/u;->b(Ljava/lang/String;LZ1/b;)Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v4, p0, Lcom/google/android/apps/nexuslauncher/u;->e:Lcom/google/android/apps/nexuslauncher/OSEManager$NetworkFetcher;

    invoke-virtual {v2}, LZ1/g;->c()LZ1/i;

    move-result-object v2

    invoke-virtual {v2}, LZ1/i;->c()Ljava/lang/String;

    move-result-object v2

    const-string v6, "provider.voiceIcon.iconXxxhdpiUrl"

    invoke-static {v2, v6}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/google/android/apps/nexuslauncher/OSEManager$NetworkFetcher;->a(Ljava/lang/String;)[B

    move-result-object v2

    array-length v4, v2

    invoke-static {v2, v5, v4}, Lcom/google/protobuf/ByteString;->j([BII)Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v0, v2}, LZ1/d;->d(Lcom/google/protobuf/ByteString;)V

    invoke-virtual {v3, v5}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, LZ1/d;->e(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v0}, Lcom/google/protobuf/E;->build()Lcom/google/protobuf/J;

    move-result-object v0

    check-cast v0, LZ1/e;

    invoke-virtual {v0}, Lcom/google/protobuf/b;->toByteArray()[B

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/u;->d:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/u;->d:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/u;->f:Ljava/lang/String;

    invoke-virtual {v2, v3, v5}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v2

    :try_start_0
    invoke-virtual {v2, v0}, Ljava/io/FileOutputStream;->write([B)V

    sget-object v0, Le3/f;->a:Le3/f;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v2, v1}, Lk3/a;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p1}, Lcom/google/android/apps/nexuslauncher/u;->parseLocalCache(Ljava/lang/String;)Lcom/google/android/apps/nexuslauncher/n;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    invoke-static {v2, p0}, Lk3/a;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1

    :cond_4
    return-object v1
.end method

.method public final parseLocalCache(Ljava/lang/String;)Lcom/google/android/apps/nexuslauncher/n;
    .locals 7

    const-string v0, "osePkg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/u;->d:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/u;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-static {v2, v1}, Lcom/android/launcher3/util/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    invoke-static {v1}, LZ1/e;->m([B)LZ1/e;

    move-result-object v1

    invoke-virtual {v1}, LZ1/e;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    new-instance p1, Lcom/google/android/apps/nexuslauncher/n;

    new-instance v2, Lcom/google/android/apps/nexuslauncher/o;

    invoke-virtual {v1}, LZ1/e;->g()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protobuf/ByteString;->q()[B

    move-result-object v3

    const-string v4, "localInfo.searchIcon.toByteArray()"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/google/android/apps/nexuslauncher/u;->decodeBitmap([B)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v1}, LZ1/e;->h()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v4

    const-string v6, "parseUri(localInfo.searchIntent, 0)"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, v3, v4}, Lcom/google/android/apps/nexuslauncher/o;-><init>(Landroid/graphics/Bitmap;Landroid/content/Intent;)V

    invoke-virtual {v1}, LZ1/e;->k()Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Lcom/google/android/apps/nexuslauncher/o;

    invoke-virtual {v1}, LZ1/e;->i()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/protobuf/ByteString;->q()[B

    move-result-object v4

    const-string v6, "localInfo.voiceIcon.toByteArray()"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lcom/google/android/apps/nexuslauncher/u;->decodeBitmap([B)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {v1}, LZ1/e;->j()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v5}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    const-string v4, "parseUri(localInfo.voiceIntent, 0)"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v3, p0, v1}, Lcom/google/android/apps/nexuslauncher/o;-><init>(Landroid/graphics/Bitmap;Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    move-object v3, v0

    :goto_0
    invoke-direct {p1, v2, v3}, Lcom/google/android/apps/nexuslauncher/n;-><init>(Lcom/google/android/apps/nexuslauncher/o;Lcom/google/android/apps/nexuslauncher/o;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    return-object p1

    :catchall_0
    move-exception p0

    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    return-object v0
.end method
