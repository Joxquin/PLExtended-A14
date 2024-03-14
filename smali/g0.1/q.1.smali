.class public final Lg0/q;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic d:Lq/f;

.field public final synthetic e:Lg0/x;


# direct methods
.method public constructor <init>(Lg0/x;Lq/f;)V
    .locals 0

    iput-object p1, p0, Lg0/q;->e:Lg0/x;

    iput-object p2, p0, Lg0/q;->d:Lq/f;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object v0, p0, Lg0/q;->d:Lq/f;

    invoke-virtual {v0, p1}, Lq/f;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lg0/q;->e:Lg0/x;

    iget-object p0, p0, Lg0/x;->q:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lg0/q;->e:Lg0/x;

    iget-object p0, p0, Lg0/x;->q:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
