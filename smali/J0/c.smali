.class public final synthetic LJ0/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/TypeEvaluator;


# instance fields
.field public final synthetic a:Landroid/view/View;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LJ0/c;->a:Landroid/view/View;

    iput p2, p0, LJ0/c;->b:I

    return-void
.end method


# virtual methods
.method public final evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, LJ0/c;->a:Landroid/view/View;

    iget p0, p0, LJ0/c;->b:I

    check-cast p2, Ljava/lang/Float;

    check-cast p3, Ljava/lang/Float;

    sget v1, Lcom/android/launcher3/dragndrop/DragLayer;->d:I

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    sget-object v1, Lcom/android/launcher3/Utilities;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    invoke-static {p3, p2, p1, p2}, Lw/f;->a(FFFF)F

    move-result p1

    invoke-virtual {v0}, Landroid/view/View;->getScaleX()F

    move-result p2

    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    move-result p3

    sub-int/2addr p0, p3

    int-to-float p0, p0

    mul-float/2addr p2, p0

    add-float/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method
