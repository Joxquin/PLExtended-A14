.class public final synthetic Lcom/google/android/apps/nexuslauncher/allapps/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/t;->a:Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/t;->a:Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;

    check-cast p1, Landroid/text/Editable;

    sget-object p1, Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;->s:[I

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;->b()V

    return-void
.end method
