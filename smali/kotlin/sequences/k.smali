.class public final Lkotlin/sequences/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/sequences/g;


# instance fields
.field public final synthetic a:Lm3/p;


# direct methods
.method public constructor <init>(Lm3/p;)V
    .locals 0

    iput-object p1, p0, Lkotlin/sequences/k;->a:Lm3/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 1

    const-string v0, "block"

    iget-object p0, p0, Lkotlin/sequences/k;->a:Lm3/p;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lkotlin/sequences/h;

    invoke-direct {v0}, Lkotlin/sequences/h;-><init>()V

    invoke-static {v0, v0, p0}, Lkotlin/coroutines/intrinsics/a;->a(Ljava/lang/Object;Lkotlin/coroutines/c;Lm3/p;)Lkotlin/coroutines/c;

    move-result-object p0

    iput-object p0, v0, Lkotlin/sequences/h;->g:Lkotlin/coroutines/c;

    return-object v0
.end method
