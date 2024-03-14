.class public final synthetic LL1/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic d:LL1/l;

.field public final synthetic e:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;


# direct methods
.method public synthetic constructor <init>(LL1/l;Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LL1/k;->d:LL1/l;

    iput-object p2, p0, LL1/k;->e:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 2

    iget-object p1, p0, LL1/k;->d:LL1/l;

    iget-object p0, p0, LL1/k;->e:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;

    const-wide/16 v0, -0x1

    iput-wide v0, p1, LL1/l;->c:J

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;->b(ZZ)V

    const/4 p0, 0x1

    return p0
.end method
