.class public final Lcom/google/android/apps/nexuslauncher/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/util/MainThreadInitializedObject$ObjectProvider;


# static fields
.field public static final a:Lcom/google/android/apps/nexuslauncher/l;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/apps/nexuslauncher/l;

    invoke-direct {v0}, Lcom/google/android/apps/nexuslauncher/l;-><init>()V

    sput-object v0, Lcom/google/android/apps/nexuslauncher/l;->a:Lcom/google/android/apps/nexuslauncher/l;

    return-void
.end method


# virtual methods
.method public final get(Landroid/content/Context;)Ljava/lang/Object;
    .locals 1

    new-instance p0, Lcom/google/android/apps/nexuslauncher/u;

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/google/android/apps/nexuslauncher/u;-><init>(Landroid/content/Context;)V

    return-object p0
.end method
