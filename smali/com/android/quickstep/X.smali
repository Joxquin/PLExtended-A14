.class public final synthetic Lcom/android/quickstep/X;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Lcom/android/quickstep/OverviewCommandHelper;

.field public final synthetic f:Lcom/android/quickstep/OverviewCommandHelper$CommandInfo;

.field public final synthetic g:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/OverviewCommandHelper;Lcom/android/quickstep/BaseActivityInterface;Lcom/android/quickstep/OverviewCommandHelper$CommandInfo;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/quickstep/X;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/X;->e:Lcom/android/quickstep/OverviewCommandHelper;

    iput-object p2, p0, Lcom/android/quickstep/X;->g:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/quickstep/X;->f:Lcom/android/quickstep/OverviewCommandHelper$CommandInfo;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/quickstep/OverviewCommandHelper;Lcom/android/quickstep/OverviewCommandHelper$CommandInfo;Lcom/android/quickstep/AbsSwipeUpHandler;)V
    .locals 1

    .line 2
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/quickstep/X;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/X;->e:Lcom/android/quickstep/OverviewCommandHelper;

    iput-object p2, p0, Lcom/android/quickstep/X;->f:Lcom/android/quickstep/OverviewCommandHelper$CommandInfo;

    iput-object p3, p0, Lcom/android/quickstep/X;->g:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lcom/android/quickstep/X;->d:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/quickstep/X;->e:Lcom/android/quickstep/OverviewCommandHelper;

    iget-object v1, p0, Lcom/android/quickstep/X;->g:Ljava/lang/Object;

    check-cast v1, Lcom/android/quickstep/BaseActivityInterface;

    iget-object p0, p0, Lcom/android/quickstep/X;->f:Lcom/android/quickstep/OverviewCommandHelper$CommandInfo;

    invoke-static {v0, v1, p0}, Lcom/android/quickstep/OverviewCommandHelper;->d(Lcom/android/quickstep/OverviewCommandHelper;Lcom/android/quickstep/BaseActivityInterface;Lcom/android/quickstep/OverviewCommandHelper$CommandInfo;)V

    return-void

    :goto_0
    iget-object v0, p0, Lcom/android/quickstep/X;->e:Lcom/android/quickstep/OverviewCommandHelper;

    iget-object v1, p0, Lcom/android/quickstep/X;->f:Lcom/android/quickstep/OverviewCommandHelper$CommandInfo;

    iget-object p0, p0, Lcom/android/quickstep/X;->g:Ljava/lang/Object;

    check-cast p0, Lcom/android/quickstep/AbsSwipeUpHandler;

    invoke-static {v0, v1, p0}, Lcom/android/quickstep/OverviewCommandHelper;->a(Lcom/android/quickstep/OverviewCommandHelper;Lcom/android/quickstep/OverviewCommandHelper$CommandInfo;Lcom/android/quickstep/AbsSwipeUpHandler;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
