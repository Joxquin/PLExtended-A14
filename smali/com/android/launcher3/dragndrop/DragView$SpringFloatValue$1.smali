.class final Lcom/android/launcher3/dragndrop/DragView$SpringFloatValue$1;
.super Landroidx/dynamicanimation/animation/q;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "value"

    invoke-direct {p0, v0}, Landroidx/dynamicanimation/animation/q;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getValue(Ljava/lang/Object;)F
    .locals 0

    check-cast p1, Lcom/android/launcher3/dragndrop/DragView$SpringFloatValue;

    invoke-static {p1}, Lcom/android/launcher3/dragndrop/DragView$SpringFloatValue;->a(Lcom/android/launcher3/dragndrop/DragView$SpringFloatValue;)F

    move-result p0

    return p0
.end method

.method public final setValue(Ljava/lang/Object;F)V
    .locals 0

    check-cast p1, Lcom/android/launcher3/dragndrop/DragView$SpringFloatValue;

    invoke-static {p1, p2}, Lcom/android/launcher3/dragndrop/DragView$SpringFloatValue;->c(Lcom/android/launcher3/dragndrop/DragView$SpringFloatValue;F)V

    invoke-static {p1}, Lcom/android/launcher3/dragndrop/DragView$SpringFloatValue;->b(Lcom/android/launcher3/dragndrop/DragView$SpringFloatValue;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
