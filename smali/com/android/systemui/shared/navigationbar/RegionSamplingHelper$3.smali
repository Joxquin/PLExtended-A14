.class Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper$3;
.super Landroid/view/CompositionSamplingListener;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;Ljava/util/concurrent/Executor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper$3;->this$0:Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;

    invoke-direct {p0, p2}, Landroid/view/CompositionSamplingListener;-><init>(Ljava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public onSampleCollected(F)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper$3;->this$0:Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;

    invoke-static {v0}, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->f(Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper$3;->this$0:Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;

    invoke-static {p0, p1}, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->i(Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;F)V

    :cond_0
    return-void
.end method
