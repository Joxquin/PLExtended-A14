.class public final synthetic Lcom/google/android/apps/nexuslauncher/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/apps/nexuslauncher/e;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lcom/google/android/apps/nexuslauncher/e;->a:I

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p1, Lcom/android/launcher3/model/data/ItemInfo;

    sget p0, Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;->n:I

    check-cast p1, LO1/m;

    return-object p1

    :pswitch_1
    check-cast p1, Lcom/android/launcher3/model/data/ItemInfo;

    sget p0, Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;->n:I

    check-cast p1, LT1/l;

    iget-object p0, p1, LT1/l;->d:Landroid/app/smartspace/SmartspaceTarget;

    return-object p0

    :goto_0
    check-cast p1, Lcom/android/launcher3/model/data/ItemInfo;

    sget p0, Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;->n:I

    check-cast p1, LT1/w;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
