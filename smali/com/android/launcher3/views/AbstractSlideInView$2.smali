.class final Lcom/android/launcher3/views/AbstractSlideInView$2;
.super Landroid/view/ViewOutlineProvider;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/views/AbstractSlideInView;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/views/AbstractSlideInView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/views/AbstractSlideInView$2;->this$0:Lcom/android/launcher3/views/AbstractSlideInView;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public final getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    iget-object p0, p0, Lcom/android/launcher3/views/AbstractSlideInView$2;->this$0:Lcom/android/launcher3/views/AbstractSlideInView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result p0

    int-to-float p0, p0

    const v1, 0x3f666666    # 0.9f

    div-float v1, p0, v1

    sub-float/2addr v1, p0

    const/high16 p0, 0x40000000    # 2.0f

    div-float/2addr v1, p0

    float-to-int p0, v1

    add-int/2addr p0, p1

    const/4 p1, 0x0

    invoke-virtual {p2, p1, p1, v0, p0}, Landroid/graphics/Outline;->setRect(IIII)V

    return-void
.end method
