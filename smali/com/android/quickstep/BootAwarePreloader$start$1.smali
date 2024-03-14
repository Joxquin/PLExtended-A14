.class final Lcom/android/quickstep/BootAwarePreloader$start$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic $lp:Lcom/android/launcher3/LauncherPrefs;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/LauncherPrefs;)V
    .locals 0

    iput-object p1, p0, Lcom/android/quickstep/BootAwarePreloader$start$1;->$lp:Lcom/android/launcher3/LauncherPrefs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/BootAwarePreloader$start$1;->$lp:Lcom/android/launcher3/LauncherPrefs;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget p0, Lcom/android/launcher3/LauncherPrefsKt;->a:I

    return-void
.end method
