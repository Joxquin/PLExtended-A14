.class final synthetic Lcom/android/wm/shell/animation/PhysicsAnimator$startInternal$2;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "SourceFile"

# interfaces
.implements Lm3/a;


# direct methods
.method public constructor <init>(Landroidx/dynamicanimation/animation/s;)V
    .locals 6

    const/4 v1, 0x0

    const-class v3, Landroidx/dynamicanimation/animation/s;

    const-string v4, "start"

    const-string v5, "start()V"

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    check-cast p0, Landroidx/dynamicanimation/animation/s;

    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/s;->h()V

    sget-object p0, Le3/f;->a:Le3/f;

    return-object p0
.end method
