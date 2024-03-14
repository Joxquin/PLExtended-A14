.class final Lcom/google/android/apps/nexuslauncher/RingAppearAnimation$buildViewRingsWithPivots$addChildAtCoordsToRing$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lm3/q;


# instance fields
.field final synthetic $animationOrigin:[F

.field final synthetic $rings:Ljava/util/ArrayList;

.field final synthetic $rootView:Landroid/view/ViewGroup;

.field final synthetic $shouldExcludeSmartspace:Z

.field final synthetic $virtualPage:Lcom/google/android/apps/nexuslauncher/RingAppearAnimation$VirtualPage;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Lcom/google/android/apps/nexuslauncher/RingAppearAnimation$VirtualPage;[FLjava/util/ArrayList;Z)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/RingAppearAnimation$buildViewRingsWithPivots$addChildAtCoordsToRing$1;->$rootView:Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/RingAppearAnimation$buildViewRingsWithPivots$addChildAtCoordsToRing$1;->$virtualPage:Lcom/google/android/apps/nexuslauncher/RingAppearAnimation$VirtualPage;

    iput-object p3, p0, Lcom/google/android/apps/nexuslauncher/RingAppearAnimation$buildViewRingsWithPivots$addChildAtCoordsToRing$1;->$animationOrigin:[F

    iput-object p4, p0, Lcom/google/android/apps/nexuslauncher/RingAppearAnimation$buildViewRingsWithPivots$addChildAtCoordsToRing$1;->$rings:Ljava/util/ArrayList;

    iput-boolean p5, p0, Lcom/google/android/apps/nexuslauncher/RingAppearAnimation$buildViewRingsWithPivots$addChildAtCoordsToRing$1;->$shouldExcludeSmartspace:Z

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v6

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result v7

    move-object v5, p3

    check-cast v5, Ljava/util/HashSet;

    const-string p1, "ring"

    invoke-static {v5, p1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/RingAppearAnimation$buildViewRingsWithPivots$addChildAtCoordsToRing$1;->$rootView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/RingAppearAnimation$buildViewRingsWithPivots$addChildAtCoordsToRing$1;->$virtualPage:Lcom/google/android/apps/nexuslauncher/RingAppearAnimation$VirtualPage;

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/RingAppearAnimation$buildViewRingsWithPivots$addChildAtCoordsToRing$1;->$animationOrigin:[F

    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/RingAppearAnimation$buildViewRingsWithPivots$addChildAtCoordsToRing$1;->$rings:Ljava/util/ArrayList;

    iget-boolean v4, p0, Lcom/google/android/apps/nexuslauncher/RingAppearAnimation$buildViewRingsWithPivots$addChildAtCoordsToRing$1;->$shouldExcludeSmartspace:Z

    invoke-static/range {v0 .. v7}, Lcom/google/android/apps/nexuslauncher/v;->a(Landroid/view/ViewGroup;Lcom/google/android/apps/nexuslauncher/RingAppearAnimation$VirtualPage;[FLjava/util/ArrayList;ZLjava/util/HashSet;II)V

    sget-object p0, Le3/f;->a:Le3/f;

    return-object p0
.end method
