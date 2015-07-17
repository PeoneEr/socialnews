class Vk
  def initialize(vk_hash)
    @vk_hash = vk_hash
  end

  def text
    @vk_hash.text
  end

  def photos
    if @vk_hash.attachment.photo
      [@vk_hash.attachment.photo.src, @vk_hash.attachment.photo.src_big, @vk_hash.attachment.photo.src_small]
    else
      []
    end
  end
end
