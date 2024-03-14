.class public final Lkotlinx/coroutines/F;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lkotlinx/coroutines/G;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "kotlinx.coroutines.main.delay"

    invoke-static {v0}, Lkotlinx/coroutines/internal/F;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    sget-object v0, Lkotlinx/coroutines/E;->l:Lkotlinx/coroutines/E;

    goto :goto_1

    :cond_1
    sget-object v0, Lkotlinx/coroutines/J;->a:Lv3/d;

    sget-object v0, Lkotlinx/coroutines/internal/v;->a:Lkotlinx/coroutines/k0;

    const-string v1, "<this>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lkotlinx/coroutines/k0;->D()Lkotlinx/coroutines/k0;

    instance-of v1, v0, Lkotlinx/coroutines/G;

    if-nez v1, :cond_2

    sget-object v0, Lkotlinx/coroutines/E;->l:Lkotlinx/coroutines/E;

    goto :goto_1

    :cond_2
    check-cast v0, Lkotlinx/coroutines/G;

    :goto_1
    sput-object v0, Lkotlinx/coroutines/F;->a:Lkotlinx/coroutines/G;

    return-void
.end method
