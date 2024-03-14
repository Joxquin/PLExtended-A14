.class public final Lcom/android/systemui/shared/regionsampling/RegionSampler$layoutChangedListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field final synthetic this$0:Lcom/android/systemui/shared/regionsampling/RegionSampler;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shared/regionsampling/RegionSampler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/shared/regionsampling/RegionSampler$layoutChangedListener$1;->this$0:Lcom/android/systemui/shared/regionsampling/RegionSampler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 1

    iget-object p1, p0, Lcom/android/systemui/shared/regionsampling/RegionSampler$layoutChangedListener$1;->this$0:Lcom/android/systemui/shared/regionsampling/RegionSampler;

    invoke-virtual {p1}, Lcom/android/systemui/shared/regionsampling/RegionSampler;->getSampledView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLocationOnScreen()[I

    move-result-object p1

    const/4 v0, 0x0

    aget p1, p1, v0

    if-ltz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/shared/regionsampling/RegionSampler$layoutChangedListener$1;->this$0:Lcom/android/systemui/shared/regionsampling/RegionSampler;

    invoke-virtual {p1}, Lcom/android/systemui/shared/regionsampling/RegionSampler;->getSampledView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLocationOnScreen()[I

    move-result-object p1

    const/4 v0, 0x1

    aget p1, p1, v0

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1, p2, p3, p4, p5}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2, p6, p7, p8, p9}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-static {p1, p2}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/shared/regionsampling/RegionSampler$layoutChangedListener$1;->this$0:Lcom/android/systemui/shared/regionsampling/RegionSampler;

    invoke-virtual {p1}, Lcom/android/systemui/shared/regionsampling/RegionSampler;->stopRegionSampler()V

    iget-object p0, p0, Lcom/android/systemui/shared/regionsampling/RegionSampler$layoutChangedListener$1;->this$0:Lcom/android/systemui/shared/regionsampling/RegionSampler;

    invoke-virtual {p0}, Lcom/android/systemui/shared/regionsampling/RegionSampler;->startRegionSampler()V

    :cond_1
    :goto_0
    return-void
.end method
