.class public final synthetic Lcom/android/systemui/shared/condition/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/shared/condition/e;->d:I

    iput-object p2, p0, Lcom/android/systemui/shared/condition/e;->e:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/systemui/shared/condition/e;->f:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/android/systemui/shared/condition/e;->d:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/shared/condition/e;->e:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/shared/condition/Monitor$1;

    iget-object p0, p0, Lcom/android/systemui/shared/condition/e;->f:Ljava/lang/Object;

    check-cast p0, Lcom/android/systemui/shared/condition/Condition;

    invoke-static {v0, p0}, Lcom/android/systemui/shared/condition/Monitor$1;->a(Lcom/android/systemui/shared/condition/Monitor$1;Lcom/android/systemui/shared/condition/Condition;)V

    return-void

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/shared/condition/e;->e:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/shared/condition/Monitor;

    iget-object p0, p0, Lcom/android/systemui/shared/condition/e;->f:Ljava/lang/Object;

    check-cast p0, Lcom/android/systemui/shared/condition/Monitor$Subscription$Token;

    invoke-static {v0, p0}, Lcom/android/systemui/shared/condition/Monitor;->d(Lcom/android/systemui/shared/condition/Monitor;Lcom/android/systemui/shared/condition/Monitor$Subscription$Token;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
