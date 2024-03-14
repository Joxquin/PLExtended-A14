.class public Lv3/g;
.super Lkotlinx/coroutines/T;
.source "SourceFile"


# instance fields
.field public final f:Lv3/b;


# direct methods
.method public constructor <init>(IIJLjava/lang/String;)V
    .locals 7

    const-string v0, "schedulerName"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lkotlinx/coroutines/T;-><init>()V

    new-instance v0, Lv3/b;

    move-object v1, v0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lv3/b;-><init>(IIJLjava/lang/String;)V

    iput-object v0, p0, Lv3/g;->f:Lv3/b;

    return-void
.end method


# virtual methods
.method public final B(Lkotlin/coroutines/i;Ljava/lang/Runnable;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "block"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lv3/g;->f:Lv3/b;

    sget-object p1, Lv3/b;->n:Lkotlinx/coroutines/internal/E;

    sget-object p1, Lv3/m;->g:Lv3/k;

    const/4 v0, 0x0

    invoke-virtual {p0, p2, p1, v0}, Lv3/b;->b(Ljava/lang/Runnable;Lv3/j;Z)V

    return-void
.end method
