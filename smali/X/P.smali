.class public final LX/P;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LX/v;


# instance fields
.field public final synthetic a:Landroidx/preference/PreferenceGroup;

.field public final synthetic b:LX/S;


# direct methods
.method public constructor <init>(LX/S;Landroidx/preference/PreferenceGroup;)V
    .locals 0

    iput-object p1, p0, LX/P;->b:LX/S;

    iput-object p2, p0, LX/P;->a:Landroidx/preference/PreferenceGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/preference/Preference;)V
    .locals 1

    const p1, 0x7fffffff

    iget-object v0, p0, LX/P;->a:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceGroup;->h(I)V

    iget-object p0, p0, LX/P;->b:LX/S;

    iget-object p1, p0, LX/S;->e:Landroid/os/Handler;

    iget-object p0, p0, LX/S;->f:LX/O;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
