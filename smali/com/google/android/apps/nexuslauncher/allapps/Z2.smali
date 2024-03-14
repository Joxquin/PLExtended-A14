.class public final synthetic Lcom/google/android/apps/nexuslauncher/allapps/Z2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field public final synthetic d:Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/Z2;->d:Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/Z2;->d:Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->H:Z

    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->m:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    invoke-virtual {p1}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->D()V

    goto :goto_0

    :cond_0
    sget p1, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->f0:I

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->updateState()V

    return-void
.end method
