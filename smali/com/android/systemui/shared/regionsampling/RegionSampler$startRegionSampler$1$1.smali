.class final Lcom/android/systemui/shared/regionsampling/RegionSampler$startRegionSampler$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic $sampledRegionWithOffset:Landroid/graphics/RectF;

.field final synthetic this$0:Lcom/android/systemui/shared/regionsampling/RegionSampler;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shared/regionsampling/RegionSampler;Landroid/graphics/RectF;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/shared/regionsampling/RegionSampler$startRegionSampler$1$1;->this$0:Lcom/android/systemui/shared/regionsampling/RegionSampler;

    iput-object p2, p0, Lcom/android/systemui/shared/regionsampling/RegionSampler$startRegionSampler$1$1;->$sampledRegionWithOffset:Landroid/graphics/RectF;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/shared/regionsampling/RegionSampler$startRegionSampler$1$1;->this$0:Lcom/android/systemui/shared/regionsampling/RegionSampler;

    iget-object p0, p0, Lcom/android/systemui/shared/regionsampling/RegionSampler$startRegionSampler$1$1;->$sampledRegionWithOffset:Landroid/graphics/RectF;

    invoke-static {v0}, Lcom/android/systemui/shared/regionsampling/RegionSampler;->access$getInitialSampling$p(Lcom/android/systemui/shared/regionsampling/RegionSampler;)Landroid/app/WallpaperColors;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/shared/regionsampling/RegionSampler;->onColorsChanged(Landroid/graphics/RectF;Landroid/app/WallpaperColors;)V

    return-void
.end method
