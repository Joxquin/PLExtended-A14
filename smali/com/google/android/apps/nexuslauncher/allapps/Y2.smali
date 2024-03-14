.class public final synthetic Lcom/google/android/apps/nexuslauncher/allapps/Y2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;


# instance fields
.field public final synthetic d:Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/Y2;->d:Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;

    return-void
.end method


# virtual methods
.method public final onDeviceProfileChanged(Lcom/android/launcher3/DeviceProfile;)V
    .locals 0

    sget p1, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->f0:I

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/Y2;->d:Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->p()V

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->updateState()V

    return-void
.end method
