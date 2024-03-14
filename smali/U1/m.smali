.class public final LU1/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Lcom/google/android/apps/nexuslauncher/overlay/SwipeTransition;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/apps/nexuslauncher/overlay/SwipeTransition;I)V
    .locals 0

    iput p2, p0, LU1/m;->d:I

    iput-object p1, p0, LU1/m;->e:Lcom/google/android/apps/nexuslauncher/overlay/SwipeTransition;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, LU1/m;->d:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, LU1/m;->e:Lcom/google/android/apps/nexuslauncher/overlay/SwipeTransition;

    invoke-static {p0}, Lcom/google/android/apps/nexuslauncher/overlay/SwipeTransition;->access$endHandler(Lcom/google/android/apps/nexuslauncher/overlay/SwipeTransition;)V

    return-void

    :goto_0
    iget-object p0, p0, LU1/m;->e:Lcom/google/android/apps/nexuslauncher/overlay/SwipeTransition;

    invoke-static {p0}, Lcom/google/android/apps/nexuslauncher/overlay/SwipeTransition;->access$onTaskMovementChanged(Lcom/google/android/apps/nexuslauncher/overlay/SwipeTransition;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
