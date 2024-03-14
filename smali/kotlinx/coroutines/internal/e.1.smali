.class public final Lkotlinx/coroutines/internal/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/Collection;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lkotlinx/coroutines/internal/d;->a()Ljava/util/Iterator;

    move-result-object v0

    const-string v1, "load(\n    CoroutineExcep\u2026.classLoader\n).iterator()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lkotlin/sequences/m;

    invoke-direct {v1, v0}, Lkotlin/sequences/m;-><init>(Ljava/util/Iterator;)V

    instance-of v0, v1, Lkotlin/sequences/a;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlin/sequences/a;

    invoke-direct {v0, v1}, Lkotlin/sequences/a;-><init>(Lkotlin/sequences/m;)V

    move-object v1, v0

    :goto_0
    invoke-static {v1}, Lkotlin/sequences/j;->c(Lkotlin/sequences/g;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/internal/e;->a:Ljava/util/Collection;

    return-void
.end method
