.class public final synthetic Lcom/google/android/apps/nexuslauncher/allapps/T2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/OnAlarmListener;


# instance fields
.field public final synthetic d:Lcom/google/android/apps/nexuslauncher/allapps/TileLifeCycle;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/apps/nexuslauncher/allapps/TileLifeCycle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/T2;->d:Lcom/google/android/apps/nexuslauncher/allapps/TileLifeCycle;

    return-void
.end method


# virtual methods
.method public final onAlarm(Lcom/android/launcher3/Alarm;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/T2;->d:Lcom/google/android/apps/nexuslauncher/allapps/TileLifeCycle;

    invoke-static {p0, p1}, Lcom/google/android/apps/nexuslauncher/allapps/TileLifeCycle;->b(Lcom/google/android/apps/nexuslauncher/allapps/TileLifeCycle;Lcom/android/launcher3/Alarm;)V

    return-void
.end method
