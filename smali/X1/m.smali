.class public final synthetic LX1/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, LX1/m;->a:I

    iput-object p2, p0, LX1/m;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, LX1/m;->a:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, LX1/m;->b:Ljava/lang/Object;

    check-cast p0, LX1/u;

    check-cast p1, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;

    invoke-static {p0, p1}, LX1/u;->f(LX1/u;Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;)V

    return-void

    :goto_0
    iget-object p0, p0, LX1/m;->b:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;->v:Z

    iget-object p0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;->r:LL1/o;

    iget-object p0, p0, LL1/o;->b:LL1/q;

    iput-boolean p1, p0, LL1/q;->g:Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
