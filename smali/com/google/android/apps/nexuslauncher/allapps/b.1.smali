.class public final Lcom/google/android/apps/nexuslauncher/allapps/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/allapps/AllAppsGridAdapter$OnLayoutCompletedListener;


# instance fields
.field public final synthetic a:Lcom/android/launcher3/allapps/AllAppsGridAdapter;

.field public final synthetic b:Lcom/google/android/apps/nexuslauncher/allapps/d;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/nexuslauncher/allapps/d;Lcom/android/launcher3/allapps/AllAppsGridAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/b;->b:Lcom/google/android/apps/nexuslauncher/allapps/d;

    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/b;->a:Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLayoutCompleted()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/b;->a:Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->removeOnLayoutCompletedListener(Lcom/android/launcher3/allapps/AllAppsGridAdapter$OnLayoutCompletedListener;)V

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/b;->b:Lcom/google/android/apps/nexuslauncher/allapps/d;

    invoke-static {p0}, Lcom/google/android/apps/nexuslauncher/allapps/d;->a(Lcom/google/android/apps/nexuslauncher/allapps/d;)V

    return-void
.end method
