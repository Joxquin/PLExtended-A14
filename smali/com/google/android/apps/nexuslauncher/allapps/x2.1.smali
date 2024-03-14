.class public final synthetic Lcom/google/android/apps/nexuslauncher/allapps/x2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Landroid/app/search/Query;


# direct methods
.method public synthetic constructor <init>(Landroid/app/search/Query;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/x2;->a:Landroid/app/search/Query;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/x2;->a:Landroid/app/search/Query;

    check-cast p1, Ljava/util/List;

    invoke-static {p0, p1}, Lcom/google/android/apps/nexuslauncher/allapps/D2;->a(Landroid/app/search/Query;Ljava/util/List;)V

    return-void
.end method
