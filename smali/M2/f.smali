.class public final LM2/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/ContentResolver;

.field public final b:Landroid/net/Uri;

.field public final c:I

.field public final d:Landroid/graphics/drawable/Icon$OnDrawableLoadedListener;

.field public e:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Landroid/content/ContentResolver;ILM2/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LM2/f;->b:Landroid/net/Uri;

    iput p3, p0, LM2/f;->c:I

    iput-object p2, p0, LM2/f;->a:Landroid/content/ContentResolver;

    iput-object p4, p0, LM2/f;->d:Landroid/graphics/drawable/Icon$OnDrawableLoadedListener;

    return-void
.end method
