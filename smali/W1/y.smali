.class public final synthetic LW1/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm3/a;


# instance fields
.field public final synthetic d:Lcom/google/android/apps/nexuslauncher/qsb/SmartspaceViewContainer;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/apps/nexuslauncher/qsb/SmartspaceViewContainer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LW1/y;->d:Lcom/google/android/apps/nexuslauncher/qsb/SmartspaceViewContainer;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    sget v0, Lcom/google/android/apps/nexuslauncher/qsb/SmartspaceViewContainer;->g:I

    iget-object p0, p0, LW1/y;->d:Lcom/google/android/apps/nexuslauncher/qsb/SmartspaceViewContainer;

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/SmartspaceViewContainer;->e:Lcom/google/android/systemui/smartspace/BcSmartspaceView;

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/qsb/SmartspaceViewContainer;->f:Lcom/android/systemui/shared/regionsampling/RegionSampler;

    invoke-virtual {p0}, Lcom/android/systemui/shared/regionsampling/RegionSampler;->currentForegroundColor()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->f(I)V

    sget-object p0, Le3/f;->a:Le3/f;

    return-object p0
.end method
