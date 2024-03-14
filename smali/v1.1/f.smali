.class public final Lv1/f;
.super Landroidx/dynamicanimation/animation/q;
.source "SourceFile"


# static fields
.field public static final a:Lv1/f;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lv1/f;

    invoke-direct {v0}, Lv1/f;-><init>()V

    sput-object v0, Lv1/f;->a:Lv1/f;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "UnfoldRemoteFilter"

    invoke-direct {p0, v0}, Landroidx/dynamicanimation/animation/q;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getValue(Ljava/lang/Object;)F
    .locals 0

    check-cast p1, Lv1/g;

    const-string p0, "provider"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget p0, p1, Lv1/g;->h:F

    return p0
.end method

.method public final setValue(Ljava/lang/Object;F)V
    .locals 1

    check-cast p1, Lv1/g;

    const-string p0, "provider"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean p0, p1, Lv1/g;->f:Z

    if-eqz p0, :cond_0

    iget-object p0, p1, Lv1/g;->d:Lt1/d;

    invoke-interface {p0, p2}, Lt1/d;->onTransitionProgress(F)V

    goto :goto_0

    :cond_0
    const-string p0, "UnfoldRemoteFilter"

    const-string v0, "Filtered progress received received while animation not in progress."

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iput p2, p1, Lv1/g;->h:F

    return-void
.end method
