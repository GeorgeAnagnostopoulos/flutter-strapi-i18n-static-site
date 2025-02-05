import type { Schema, Attribute } from '@strapi/strapi';

export interface ArticleElementTextOrCode extends Schema.Component {
  collectionName: 'components_article_element_text_or_codes';
  info: {
    displayName: 'TextOrCode';
    description: '';
  };
  attributes: {
    type: Attribute.Enumeration<['text', 'code']> & Attribute.DefaultTo<'text'>;
    title: Attribute.String;
    caption: Attribute.String;
    content: Attribute.RichText;
  };
}

export interface MenuMenuItem extends Schema.Component {
  collectionName: 'components_menu_menu_items';
  info: {
    displayName: 'MenuItem';
    description: '';
  };
  attributes: {
    title: Attribute.String;
    description: Attribute.String;
    url: Attribute.String;
    type: Attribute.Enumeration<['button', 'link']> &
      Attribute.Required &
      Attribute.DefaultTo<'link'>;
  };
}

declare module '@strapi/types' {
  export module Shared {
    export interface Components {
      'article-element.text-or-code': ArticleElementTextOrCode;
      'menu.menu-item': MenuMenuItem;
    }
  }
}
