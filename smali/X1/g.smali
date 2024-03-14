.class public final synthetic LX1/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field public final synthetic d:Lcom/google/android/apps/nexuslauncher/quickstep/TaskOverlayFactoryImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/apps/nexuslauncher/quickstep/TaskOverlayFactoryImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LX1/g;->d:Lcom/google/android/apps/nexuslauncher/quickstep/TaskOverlayFactoryImpl;

    return-void
.end method


# virtual methods
.method public final onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, LX1/g;->d:Lcom/google/android/apps/nexuslauncher/quickstep/TaskOverlayFactoryImpl;

    sget v0, Lcom/google/android/apps/nexuslauncher/quickstep/TaskOverlayFactoryImpl;->i:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "pref_overview_action_suggestions"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/apps/nexuslauncher/quickstep/TaskOverlayFactoryImpl;->f:Z

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/quickstep/TaskOverlayFactoryImpl;->clearAllActiveState()V

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/quickstep/TaskOverlayFactoryImpl;->g:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    :cond_0
    return-void
.end method
