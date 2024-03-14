.class public final Lcom/google/android/apps/nexuslauncher/allapps/S0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LX2/k0;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/apps/nexuslauncher/allapps/R0;

    invoke-direct {v0}, Lcom/google/android/apps/nexuslauncher/allapps/R0;-><init>()V

    sget-object v1, LX2/n0;->d:Ljava/util/BitSet;

    new-instance v1, LX2/k0;

    invoke-direct {v1, v0}, LX2/k0;-><init>(Lcom/google/android/apps/nexuslauncher/allapps/R0;)V

    sput-object v1, Lcom/google/android/apps/nexuslauncher/allapps/S0;->a:LX2/k0;

    return-void
.end method
