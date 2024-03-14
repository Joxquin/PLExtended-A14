.class public final Lcom/google/android/apps/nexuslauncher/p;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lcom/google/android/apps/nexuslauncher/n;

.field public final c:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/apps/nexuslauncher/n;)V
    .locals 1

    const-string v0, "pkg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/p;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/p;->b:Lcom/google/android/apps/nexuslauncher/n;

    const-string p2, "com.google.android.googlequicksearchbox"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/apps/nexuslauncher/p;->c:Z

    return-void
.end method
