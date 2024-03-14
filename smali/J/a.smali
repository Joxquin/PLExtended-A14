.class public final LJ/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:LE/f;

.field public final synthetic e:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>(LE/f;Landroid/graphics/Typeface;)V
    .locals 0

    iput-object p1, p0, LJ/a;->d:LE/f;

    iput-object p2, p0, LJ/a;->e:Landroid/graphics/Typeface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, LJ/a;->d:LE/f;

    iget-object p0, p0, LJ/a;->e:Landroid/graphics/Typeface;

    iget-object v0, v0, LE/f;->a:LD/m;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, LD/m;->d(Landroid/graphics/Typeface;)V

    :cond_0
    return-void
.end method
