.class public final Lv3/n;
.super Lkotlinx/coroutines/x;
.source "SourceFile"


# static fields
.field public static final f:Lv3/n;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lv3/n;

    invoke-direct {v0}, Lv3/n;-><init>()V

    sput-object v0, Lv3/n;->f:Lv3/n;

    return-void
.end method


# virtual methods
.method public final B(Lkotlin/coroutines/i;Ljava/lang/Runnable;)V
    .locals 1

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "block"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lv3/d;->g:Lv3/d;

    sget-object v0, Lv3/m;->h:Lv3/k;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, p0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p1, Lv3/g;->f:Lv3/b;

    const/4 p1, 0x0

    invoke-virtual {p0, p2, v0, p1}, Lv3/b;->b(Ljava/lang/Runnable;Lv3/j;Z)V

    return-void
.end method
