.class public final synthetic LV0/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;

.field public final synthetic f:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;Ljava/util/Set;I)V
    .locals 0

    iput p3, p0, LV0/f;->d:I

    iput-object p1, p0, LV0/f;->e:Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;

    iput-object p2, p0, LV0/f;->f:Ljava/util/Set;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, LV0/f;->d:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, LV0/f;->e:Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;

    iget-object p0, p0, LV0/f;->f:Ljava/util/Set;

    invoke-static {v0, p0}, Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;->c(Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;Ljava/util/Set;)V

    return-void

    :goto_0
    iget-object v0, p0, LV0/f;->e:Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;

    iget-object p0, p0, LV0/f;->f:Ljava/util/Set;

    invoke-static {v0, p0}, Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;->e(Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;Ljava/util/Set;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
