.class public final synthetic Lcom/google/android/apps/nexuslauncher/allapps/b0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/b0;->a:I

    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/b0;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/b0;->a:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/b0;->b:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;

    check-cast p1, Landroid/app/search/SearchTarget;

    invoke-virtual {p0, p1}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->e(Landroid/app/search/SearchTarget;)Lcom/google/android/apps/nexuslauncher/allapps/q0;

    move-result-object p0

    return-object p0

    :goto_0
    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/b0;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    check-cast p1, Lcom/google/android/apps/nexuslauncher/allapps/g1;

    invoke-interface {p0, p1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
